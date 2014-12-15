--This is a plugin for the WoW addon "Quick DKP v2" [http://www.curse.com/addons/wow/quick-dkp-v2] used by "Höllenlegion@EU-Dethecus" [http://hoellenlegion.org/]. It uses some snippets from the original files. The original addon is required to run this plugin, as we inject our code into QKDPv2 (post-hooks).

-------
--Add "Höllenlegion bonus", which is awarded every X minutes (adjustable in the GUI of QKDPv2). This provides a way to give out DKP faster then every 1h, which is the default hourly bonus of QDKPv2.
-------

local QDKP2_LOC_HLBONUS = "Höllenlegion bonus";

--Inject localization for GUI [see \World of Warcraft\Interface\Addons\QDKP2_Config\Locales\enGB.lua]
local L_Config = LibStub("AceLocale-3.0"):GetLocale("QDKP2_Config");

L_Config.HLTIMED = QDKP2_LOC_HLBONUS;
L_Config.AW_HLTIMED_Period = L_Config.AW_TIM_Period;
L_Config.AW_HLTIMED_Period_d = L_Config.AW_TIM_Period_d;

--Inject variable names (for translating gui names to global variable names) [see \World of Warcraft\Interface\Addons\QDKP2_Config\ProfileToGlobal.lua]
QDKP2_Config.TransTable.AW_HLTIMED_Period = "QDKP2_HLPLUGIN_TIME_UNTIL_UPLOAD";
QDKP2_Config.TransTable.AW_HLTIMED_OfflineCtl = "QDKP2_AWARD_OFFLINE_TIMER";
QDKP2_Config.TransTable.AW_HLTIMED_ZoneCtl = "QDKP2_AWARD_ZONE_TIMER";
QDKP2_Config.TransTable.AW_HLTIMED_RankCtl = "QDKP2_AWARD_RANK_TIMER";
QDKP2_Config.TransTable.AW_HLTIMED_AltCtl = "QDKP2_AWARD_ALT_TIMER";
QDKP2_Config.TransTable.AW_HLTIMED_StandbyCtl = "QDKP2_AWARD_STANDBY_TIMER";
QDKP2_Config.TransTable.AW_HLTIMED_ExternalCtl = "QDKP2_AWARD_EXTERNAL_TIMER";

--Inject GUI elements [see \World of Warcraft\Interface\Addons\QDKP2_Config\ConfigTree\Awarding.lua]
QDKP2_Config.Tree.args.Awarding.args.HLTIMED = {
	type = "group",
	args = {
		AW_HLTIMED_Period = {
			type = "range",
			
			min = 6,
			step = 6,
			softMax = 60,
			max = 600,
			
			order = 1,
		},
		
		AW_CtlHeader = {
			type = "header",
			order = 100,
		},
	},
};

for j, sys in pairs({"Offline","Zone","Rank","Alt","Standby","External"}) do
	local name = "AW_TIM_"..sys.."Ctl";
	
	QDKP2_Config.Tree.args.Awarding.args.HLTIMED.args[name] = QDKP2_Config.Tree.args.Awarding.args.TIM.args[name];
end

--Original function is defined in \World of Warcraft\Interface\Addons\QDKP_V2\Code\Core\DKP_Management.lua
local function HoursTick()
	local SID = QDKP2_OngoingSession();
	local toAdd = QDKP2_HLPLUGIN_TIME_UNTIL_UPLOAD/60;
	local BONUS = QDKP2timerBase.BONUS * toAdd;-- DKP to award every timer tick
	local SomeoneAwarded;
	
	--used for check for alts still to come
	local nameBase = {};
	
	for i=1, QDKP2_GetNumRaidMembers() do
		local name, rank, subgroup, level, class, fileName, zone, online, inguild, standby, removed = QDKP2_GetRaidRosterInfo(i);
		
		if inguild and not removed then
			table.insert(nameBase, name);
		end;
	end;
	
	QDKP2_DoubleCheckInit(name);

	for i=1, QDKP2_GetNumRaidMembers() do
		local name, rank, subgroup, level, class, fileName, zone, online, inguild, standby, removed=QDKP2_GetRaidRosterInfo(i);
		local inzone = (zone == QDKP2_RaidLeaderZone) or (zone=="Offline")

		if inguild and not removed and not QDKP2_IsMainAlreadyProcessed(name) then
			if (online or QDKP2_AWARD_OFFLINE_TIMER) and (inzone or QDKP2_AWARD_ZONE_TIMER) then
				local CurRaidTime = QDKP2timerBase[name] or 0;
				
				QDKP2_ProcessedMain(name);
				
				QDKP2timerBase[name] = CurRaidTime + toAdd;

				--Award DKP only on every tick set in "Höllenlegion bonus" (QDKP2_HLPLUGIN_TIME_UNTIL_UPLOAD). And do this NOT per session, so if tick is every 12min, and player A is 6min present in session 1 and 6min in session 2, he WILL get X DKP awarded for his 12min attendance overall.
				if ( mod(RoundNum(QDKP2_GetHours(name)*10), RoundNum(QDKP2_HLPLUGIN_TIME_UNTIL_UPLOAD/60*10)) == 0 ) then
					local eligible, percentage, noreason = QDKP2_GetEligibility(name, 'timer', BONUS, online, inzone);
					
					if eligible then
						QDKP2log_Entry(name, QDKP2_LOC_HLBONUS, QDKP2LOG_MODIFY,  {0, nil, nil, percentage});
						local Log = QDKP2log_GetLastLog(QDKP2_GetMain(name));
						QDKP2log_SetEntry(QDKP2_GetMain(name), Log, SID, BONUS, nil, nil, nil, nil, nil, true);
						SomeoneAwarded = true;
					elseif noreason then
						QDKP2log_Entry(name, QDKP2_LOC_HLBONUS, QDKP2LOG_NODKP,  {BONUS, nil, nil},nil,QDKP2log_PacketFlags(nil,nil,nil,nil,noreason));
					end;
				end;
			elseif QDKP2_IsMainAlreadyProcessed(name) then
				--gogo next one
			elseif not QDKP2_AltsStillToCome(name, nameBase, i) then
				local reasonNo;
				
				if not (online or QDKP2_GIVEOFFLINE) then
					reasonNo = QDKP2LOG_NODKP_OFFLINE;
				elseif not (inzone or QDKP2_GIVEOUTZONE) then
					reasonNo = QDKP2LOG_NODKP_ZONE;
				end;
				
				if reasonNo then
					QDKP2log_Entry(name, nil, QDKP2LOG_NODKP,  {nil, nil, toAdd},nil,QDKP2log_PacketFlags(nil,nil,nil,nil,reasonNo));
				end;
			end;
		end;
	end;
	
	if SomeoneAwarded then
		QDKP2_Msg(QDKP2_LOC_HLBONUS..": DKP verteilt.","TIMERTICK");
		QDKP2_UploadAll();
	else
		QDKP2_Events:Fire("DATA_UPDATED", "all");
	end;
	
	QDKP2log_Event("RAID", QDKP2_LOC_HLBONUS .. ": "..BONUS.." DKP an entsprechende Member verteilt.")
end;

--Hook QDKP2_CheckHours(). This is called every 1 second and checks the time since the last timer tick. If it's greater than QDKP2_TIME_UNTIL_UPLOAD it calls the hour tick. This then adds a tick (e.g. all 12min), but only awards DKP for full hours. We award DKP EVERY tick (e.g. all 12min), where this can be configured separately in the GUI (QDKP2_HLPLUGIN_TIME_UNTIL_UPLOAD).
local function PostHook(itsTime, ...)
	if ( QDKP2_isTimerOn() ) and ( QDKP2_ManagementMode() ) and ( itsTime ) then
		HoursTick();
	end;
	
	return ...;
end;

local old_QDKP2_CheckHours = QDKP2_CheckHours;

function QDKP2_CheckHours(...)
	local itsTime = ( (time() - QDKP2timerBase.TIMER) / 60  >= QDKP2_TIME_UNTIL_UPLOAD);
	
	return PostHook(itsTime, old_QDKP2_CheckHours(...));
end;

--Hook QDKP2log_Entry: Block DKP awards from hourly bonus (we award that DKP more frequently ourself)
local blockEntry = false;
local old_QDKP2log_Entry = QDKP2log_Entry;
function QDKP2log_Entry(name, action, ...)
	if ( action == QDKP2_LOC_IntegerTime ) then
		blockEntry = true;
		return;
	end;
	
	return old_QDKP2log_Entry(name, action, ...);
end;

--Hook QDKP2log_SetEntry: Block DKP awards from hourly bonus (we award that DKP more frequently ourself)
local old_QDKP2log_SetEntry = QDKP2log_SetEntry;
function QDKP2log_SetEntry(...)
	if blockEntry then
		blockEntry = false;
		return;
	end;
	
	return old_QDKP2log_SetEntry(...);
end;

-------
--Hook HTML Export: add our script for sortable tables
-------

local old_QDKP2_OpenCopyWindow = QDKP2_OpenCopyWindow;
function QDKP2_OpenCopyWindow(...)
	old_QDKP2_OpenCopyWindow(...);
	
	local txt = QDKP2_CopyWindow_Data:GetText();
	
	if strfind(txt, " HREF=") then
		local script = [[<meta http-equiv="content-type" content="text/html; charset=UTF-8"> <script src="sorttable.js"></script>]];
		txt = script .. '\n' .. txt;
		
		local table = '<TABLE ';
		local tag = 'class="sortable" ';
		txt = gsub(txt, table, table .. tag);
		
		QDKP2_CopyWindow_TextBuff = txt;
		QDKP2_CopyWindow_Data:SetText(txt);
		QDKP2_CopyWindow_Data:HighlightText();
		QDKP2_CopyWindow_Data:SetFocus();
	end;
end;

-------
--Inject Höllenlegion Default Setup
-------

--QDKP_V2.lua [GLOBAL]

QDKP2_Data["Dethecus-Höllenlegion"].AutoBossEarn = false;
QDKP2_Data["Dethecus-Höllenlegion"].GUI.DKP_Timer = 20;
QDKP2_Data["Dethecus-Höllenlegion"].GUI.ShowOutGuild = true;
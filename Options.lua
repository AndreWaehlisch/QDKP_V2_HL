--This is the configuration for the WoW addon "Quick DKP v2" [http://www.curse.com/addons/wow/quick-dkp-v2] used by "Höllenlegion@EU-Dethecus" [http://hoellenlegion.org/]. This is just the edited Options.ini file from the original.





--==============================================--
--======== QDKP V2 CONFIGURATION FILE ==========--
--==============================================--

------------------- LOOTS/AWARDS ---------------------------

-- BOSSES
--  Here you can set the DKP to award the raid for a boss kill. DKP_10 are awarded for 10-men instances
--  and DKP_25 for 25 men. For coliseum, you can also specify the DKP for the HEROIC version.
--  USES LIBBABBLE-BOSS, so you don't need to traslate the instances or the bosses' name into your language.
--  Comes preloaded with all raid instances found WoW:WoD (up to Highmaul).
--  This is just a template, with everyting set at 0. Edit the table according to your guild's policy.
--  You should first set the instances default, then alter the boss particular table.
-- 
--  
-- CaSe InSeNsItIvE

-- QDKP2_Instances = {
-- { name = "Siege of Orgrimmar", 		Normal = 0, Heroic = 0, Mythic = 0, LFRFlex = 0},
-- { name = "Highmaul", 				Normal = 0, Heroic = 0, Mythic = 0, LFRFlex = 0},
-- { name = "Karazhan", 				Normal = 0, Heroic = 0, Mythic = 0, LFRFlex = 0},
-- }

-- The following table lets you set the DKP award to give to the raid when a given boss is slain,
-- overriding the instance default value specified in QDKP2_Instances.
-- If = nil, the award will be set as the instance default. To override, change nil to the award you wish.
-- As before, DKP_10 refers to the 10 men version of the raid, DKP_25 to the 25 men.
-- This table comes preloaded with the typical bosses you could want to override from the instance default.
-- You can add any npc name you want, in english or in your client's language.
-- CaSe InSeNsItIvE

-- QDKP2_Bosses = {
-- { name = "Immerseus",		Normal = nil, Heroic = nil, Mythic = nil, LFRFlex = nil},
-- { name = "The Fallen Protectors",		Normal = nil, Heroic = nil, Mythic = nil, LFRFlex = nil},
-- { name = "Norushen",		Normal = nil, Heroic = nil, Mythic = nil, LFRFlex = nil},
-- { name = "Sha of Pride",		Normal = nil, Heroic = nil, Mythic = nil, LFRFlex = nil},
-- { name = "Galakras",		Normal = nil, Heroic = nil, Mythic = nil, LFRFlex = nil},
-- { name = "Iron Juggernaut",		Normal = nil, Heroic = nil, Mythic = nil, LFRFlex = nil},
-- { name = "Kor'kron Dark Shaman",		Normal = nil, Heroic = nil, Mythic = nil, LFRFlex = nil},
-- { name = "General Nazgrim",		Normal = nil, Heroic = nil, Mythic = nil, LFRFlex = nil},
-- { name = "Malkorok",		Normal = nil, Heroic = nil, Mythic = nil, LFRFlex = nil},
-- { name = "Spoils of Pandaria",		Normal = nil, Heroic = nil, Mythic = nil, LFRFlex = nil},
-- { name = "Thok the Bloodthirsty",		Normal = nil, Heroic = nil, Mythic = nil, LFRFlex = nil},
-- { name = "Siegecrafter Blackfuse",		Normal = nil, Heroic = nil, Mythic = nil, LFRFlex = nil},
-- { name = "Paragons of the Klaxxi",		Normal = nil, Heroic = nil, Mythic = nil, LFRFlex = nil},
-- { name = "Garrosh Hellscream",		 Normal = nil, Heroic = nil, Mythic = nil, LFRFlex = nil},
-- { name = "Kargath Bladefist",		Normal = nil, Heroic = nil, Mythic = nil, LFRFlex = nil},
-- { name = "The Butcher",		Normal = nil, Heroic = nil, Mythic = nil, LFRFlex = nil},
-- { name = "Tectus",		Normal = nil, Heroic = nil, Mythic = nil, LFRFlex = nil},
-- { name = "Brackenspore",		Normal = nil, Heroic = nil, Mythic = nil, LFRFlex = nil},
-- { name = "Pol",		Normal = nil, Heroic = nil, Mythic = nil, LFRFlex = nil},
-- { name = "Ko'ragh",		Normal = nil, Heroic = nil, Mythic = nil, LFRFlex = nil},
-- { name = "Imperator Mar'gok",		 Normal = nil, Heroic = nil, Mythic = nil, LFRFlex = nil},
-- }

---------------------------------------------------------------------------------------------

-- LOOTS PRICES
-- If your guild implement fixed prices for loot, here you can define the prices.
-- Just change the "0" with the amount of DKP you wish to charge the looter of that
-- class of item for. You can also enter a percentual ENCLOSED WITHIN A PAIR OF APIXS!!!!
-- (example: QDKP2_Prices_NaxNorm_Armor = "20%". The item price will be calculated
-- using the looter's net DKP amount as basis).

-- Throne of Thunder

-- QDKP2_Prices_ToT10_Armor = 0
-- QDKP2_Prices_ToT10_Weap = 0
-- QDKP2_Prices_ToT10_Tier = 0
-- QDKP2_Prices_ToT10H_Armor = 0
-- QDKP2_Prices_ToT10H_Weap = 0
-- QDKP2_Prices_ToT10H_Tier = 0
-- QDKP2_Prices_ToT25_Armor = 0
-- QDKP2_Prices_ToT25_Tier = 0
-- QDKP2_Prices_ToT25_Weap = 0
-- QDKP2_Prices_ToT25H_Armor = 0
-- QDKP2_Prices_ToT25H_Tier = 0
-- QDKP2_Prices_ToT25H_Weap = 0

-- Siege of Orgrimmar

-- QDKP2_Prices_SoO10_Armor = 0
-- QDKP2_Prices_SoO10_Weap = 0
-- QDKP2_Prices_SoO10_Tier = 0
-- QDKP2_Prices_SoO10H_Armor = 0
-- QDKP2_Prices_SoO10H_Weap = 0
-- QDKP2_Prices_SoO10H_Tier = 0
-- QDKP2_Prices_SoO25_Armor = 0
-- QDKP2_Prices_SoO25_Tier = 0
-- QDKP2_Prices_SoO25_Weap = 0
-- QDKP2_Prices_SoO25H_Armor = 0
-- QDKP2_Prices_SoO25H_Tier = 0
-- QDKP2_Prices_SoO25H_Weap = 0

-- If This is true, and the Loot charge option is active, QDKP will open the Toolbox
-- everytime someone loots an Armor, weapon or tier token. If false, it will open only
-- if the item falls in one of the category above and the DKP amount is not 0.
QDKP2_AlwaysOpenToolbox = false


-- You can use the following table to define a price for items that don't
-- fall in any of the generic class of items defined above (example: recipes,
-- orbs, ...), or to override a price for a certain item (weapon, armor,...).
-- The items in there are just an example. Write the name of the item you want to
-- charge looters for, and enter the DKP amount you wish to assign to the item.
-- CaSe InSeNsItIvE

-- QDKP2_ChargeLoots = {
  -- { item = "Uber Sword of Facerolling", DKP = "100"},
  -- { item = "Spam Cape", DKP = "25"},
-- }


-- QUALITY THRESHOLDS
-- Relation between numbers and rarity:
-- 2=good(green); 3=rare(blue) 4=epic(purple) 5=legendary(orange)
--
MIN_LOGGED_RAID_LOOT_QUALITY = 4	--the minimum quality to log a loot item in the raid log. MUST BE GREATER OR EQUAL TO NEXT ONE.
MIN_LOGGED_LOOT_QUALITY = 4 		--the minimum quality to log a loot in the player log. MUST BE LESSER OR EQUAL TO PREVIOUS ONE.
MIN_CHARGABLE_LOOT_QUALITY = 4		--the minimum quality of a looted item to charge the looter with "charge loot" keybind
MIN_CHARGABLE_CHAT_QUALITY = 4		--the minimum quality of a item appeared in raid chat or raid warning to be stored and
					--used by "charge chat" or by "auto detect winners" functions.
MIN_LISTABLE_QUALITY = 4		--the minimum quality of a item looted or appeared in chat to be included in the reason
					--box history (cycle it with up and down keyboard arrows)
MIN_POPUP_TOOLBOX_Q = 4			--the minimum quality to popup the toolbox when the "Charge on loot" is active

-- LOOTS TO LOG
--   Put here the loots under the rarity threshold you specified that you wish to include in QDKP log.
--   the level specify the log/warning level:
--
--    1: Just log it
--    2: Log it and display a text message on chat window
--    3: Log it and Display a warning window
--
--  The provided items are there only for example. you can safely remove them.
-- CaSe InSeNsItIvE
--
-- QDKP2_LogLoots = {
  -- { item = "Core Leather", level = 1},
  -- { item = "Massive Mojo", level = 2},
  -- { item = "Scale of Onyxia", level = 3},
-- }


-- LOOTS NOT TO LOG
QDKP2_LogBadges = false  -- If set to true, QDKP will log all Money-class items looted by players (badges, emblems, ...).
QDKP2_LogShards = false  -- If set to true, QDKP will log all looted enchanting mats (disenchanted stuff)

--   Put here the loots equal or above the rarity threshold you specified that you don't want to include in QDKP log.
-- CaSe InSeNsItIvE
--
-- QDKP2_NotLogLoots = {
-- "Blah Blah",
-- "Spam",
-- "Eggs",
-- }

------------------- BID/ROLL MANAGER --------------------

-- QDKP bid manager has been developed with flexibility in mind. This means that it can be tricky to set up, depending on your
-- guild needs. The bid manager will listen for a list of possible keywords in raid and wispers. When found, the player who
-- wrote that word will be added to the "Bid manager" list in the players roster.
-- The "Value" field is a custom value that can get several meanings. The mostcommon, it will just be the player's DKP bid amount.
-- You can configure QDKP to perform some further calculation using several variables. You can read some example in hereunder.
-- The following configuration is a basic template that will work on most of the cases.
-- Keywords that QDKP will listen to by default: "need", "greed", "bid", "all", "half", "min" and /roll.
-- If you have troubles adapting the bid manager to your guild's rules, feel free to to post in the new website forums. 
-- http://www.quickdkp.com
-- I'll try to set up the keywords for you.
--
-- ALL keywords are CaSe InSeNsItIvE

QDKP2_BidM_Keywords={
{keywords="bid $n"},			--$n stands for any valid numeric value. this will catch bids.
{keywords="bid half", value="$net/2"},
{keywords="bid all,bid max",value="$net"},
{keywords="bid min",value="$minbid"},



-- the following keywords are only examples to show what you can do with the parameters:

-- This keyword introduces the "dkp" parameter, used to set the amount to charge the winner for if differs from the bid value.
-- In this example, I calculate the bid value as percentage of the bet versus the net DKP amount
-- When the winner will be announced, though, the charged DKP will be the orginal bid.
-- {keywords="$n, bid $n, need $n", value="$n*100/$net", dkp="$n"},

-- The $mintowin parameter should be used if your guild follow the "second highest bid+1", which means that the winner
-- does not spend all the bet amount, but rather the amount bet by the second bidder plus one dkp.
-- Example: PlayerA bets 50 dkp, playerB bets 30. PlayerA wins and pays 31 DKP.
-- Should there is only one bidder, he will pay the minimum bid amount.
-- {keywords="$n, bid $n, need $n", dkp = "$mintowin"},

-- You can use the "min" and "max" parameters to change the minimum/maximum bet a player can place. This can be used to
-- set up a fixed-step bid system where a player must increase the previous bet by a minimum amount (in this case, 5).
-- the variable $higherbid1 is replaced by the actual top bet.
-- {keywords="$n, bid $n, need $n", min="($higherbid1 or $minbid)+5"},
-- {keywords="bid", value="($higherbid1 or $minbid)+5"}, --this is to automatically place a highest+5 bid when someone whispers you "bid"

-- This keyword is an implementation of a random influenced loot system. The player's bid will be modified by a coefficent that is 1 if
-- the roll is 0 and tops 3 if the roll is 100.
-- {keywords="$n,bid $n,need $n" ,value="(1+$roll*2/100)*$n", dkp="$n"},

-- The "/roll" keyword is triggered when someone rolls. It can be used to react to /rolls, for example placing a  bid or blocking it.
-- in this example, we get the bid value adding the net DKP amount to the 1-100 roll. the winner is charged by half his DKP.
-- {keywords="/roll", value="$net+$roll", dkp="$net/2"}

-- These keywords are an implementation of the Ni Karma-like bidding system, where a player can use his DKP to place a "karma" (improved)
-- roll for half of their DKP (if they have at least 50 dkp), a normal "need" roll for 5 dkp, or an offspec roll for free.
-- offspec values will be reported as negative numbers, so that the bidder with the highest value is the winner in any case.
-- It also show how to tell QDKP if a player is eligible to use a keyword with the "eligible" field.
-- Credits for this system go to Ashley Francois (Zafrina of Kul Tiras).
-- {keywords="karma,bonus", value="$roll+$net", dkp="$net/2", min="50"},
-- {keywords="need,no bonus", value="$roll", dkp="5"}, --this keyword is not needed in a pure ni karma system, but can be useful.
-- {keywords="offspec", value="$roll-101", dkp="0"},

-- The $itemprice keyword is used to  bridge the bid manager with the fixed price system. You can, for example, set up prices and then
-- use them as minimum bid values, letting the players bid for more if they want:
-- {keywords="greed,offspec,/roll", value="$itemprice or $minbid"},
-- {keywords="$n, bid $n, need $n", min="$itemprice or $minbid"},

-- There are a lot of parameters that can be used in a keyword. In this example, everyone can bid for items with iLevel lower or equal to 250, but
-- higher level items may be only rolled by players whose rank is lesser than 3 and are not alts (please note that rank number is 1 for guild master
-- and then increases as the ranks get lower).
-- {keywords="$n, bid $n, need $n", eligible="($itemlevel or 0)<=250"},
-- {keywords="/roll",eligible="(($itemlevel or 0) <=250) or ($rank<=3 and not $isalt)"},

}


QDKP2_BidM_GetFromWhisper    	= true 	-- If true, QDKP will look for bids placed with whispers
QDKP2_BidM_GetFromGroup      	= false  -- if true, QDKP will look for bids placed in the raid or party chat

QDKP2_BidM_AnnounceStart    	= true 	-- If true, announce the bid start to the raid channel
QDKP2_BidM_AnnounceWinner    	= true	-- if true, announce the winner to the raid channel
QDKP2_BidM_AnnounceCancel    	= true	-- If true, announce when you cancel a bid in progress to the raid channel

QDKP2_BidM_CountStop        	= true	-- Do you want to trigger an automatic countdown before closing a bid? If receives a bet, the cd is  cancelled.
QDKP2_BidM_GiveItemToWinner 	= true  -- If you are the bid manager and bidding for an item you're looting, setting this to true will make QDKP give the item to the winner.
QDKP2_BidM_ConfirmWin			= false	-- Set this to false will override the confirmation.
QDKP2_BidM_AckBids 				= true  -- if true, accepted bids are acknowledged by a whisper.
QDKP2_BidM_AckRejBids     		= true 	-- if true, rejected bids are announced.

QDKP2_BidM_AllowMultipleBid	= false	-- can a player modify a bid? if false, it will be a one shot bid only. /roll are always one shot only.
QDKP2_BidM_AllowLesserBid  	= false	-- if false, players won't be able to put a smaller bid than the previous one.
QDKP2_BidM_HideWispBids 	= true	-- if true, the whispers you get from your guild members for bids will not be shown.
QDKP2_BidM_LogBids			= true 	-- If true, QDKP will log every player's bid in their logs.
QDKP2_BidM_OverBid         	= false	-- if true, players will be able to bid more DKP than they have.
QDKP2_BidM_RefreshBets		= false -- if true, every time someone makes or updates a bet, QDKP will check and update all the others, cancelling those who aren't valid anymore.
QDKP2_BidM_CanOutGuild      = true  -- if false, players that are not in the guild won't be able to bid for items. DKP bid is disabled anyway, since they don't have dkp.
QDKP2_BidM_RoundValue       = true  -- if true, QDKP will round the "value" field to the nearest integer.
QDKP2_BidM_AutoRoll			= false  -- If true, QDKP will do an internal roll if someone places a bid that needs a roll value to be calculated.if false, reject the bid asking to /roll first.
QDKP2_BidM_CatchRoll        = true	-- if true, QDKP will catch rolls.
QDKP2_BidM_CountAmount     	= 5	-- The countdown length. QDKP will tick with 2 seconds delay.

QDKP2_BidM_MinBid            	= 20	-- Enter here the minimum bid allowed in your guild. (used only for numeric based bidding)
QDKP2_BidM_MaxBid            	= 9999999  -- Enter here the maximum bid allowed in your guild (if any)

-- These are the channels QDKP sends notifications to.
-- Bid acknowledge or reject reason are always sent back on the same channel they are received.
-- Valid channels: "GUILD", "RAID", "PARTY", "GROUP", "RAID_WARNING", "OFFICER", "BATTLEGROUND", "SAY" , "YELL"
-- GROUP turns to RAID if you are in raid, PARTY if you are in a party.
--NOTE: Plase write channels' name in UPPERCASE
QDKP2_BidM_ChannelStart   =  "RAID_WARNING"
QDKP2_BidM_ChannelCanc = "GROUP"
QDKP2_BidM_ChannelWin = "GROUP"
QDKP2_BidM_ChannelCount = "GROUP"
QDKP2_BidM_ChannelReject = "BID" 		--channel BID means the same channel where you got the bid
QDKP2_BidM_ChannelAck = "WHISPER"  --channel BID means the same channel where you got the bid

--these strings are used as bidding announcement.
QDKP2_BidM_StartString="Bitte für $ITEM bieten! Gebote an mich whispern, in der Form \"/w ".. UnitName("player") .." bid 20\"."
QDKP2_BidM_CancelString="Rolling for $ITEM cancelled."
QDKP2_BidM_WinnerString="$NAME hat $ITEM mit $AMOUNT DKP gewonnen."
QDKP2_BidM_WinnerStringNoDKP="$NAME hat $ITEM gewonnen." 		--used when the bid manager doesn't know the DKP amount to charge the player for.

------------------------- MISC --------------------------

-- maximum amount of net DKP a player can reach. Any further gain will be discarded.
-- to set it greater than 999999 you'll need to change the guild notes format, see the "FORMAT" section of this file.
QDKP2_MAXIMUM_NET=999999

-- minimum amount of net DKP a player can reach. Any further loss will be discarded.
-- to set it lesser than -99999 you'll need to change the guild notes format, see the "FORMAT" section of this file.
QDKP2_MINIMUM_NET=0

-- if this is set to true, when you charge a player for something (with the "enter" key),
-- you'll trigger a zerosum award instead than the normal charge. (that is, you set zerosum as default charge method)
QDKP2_CHARGEWITHZS = false

--if this is set to true, QDKP will print to screen the name of every new Guild Member as it detects them.
QDKP2_REPORT_NEW_GUILDMEMBER = true

--when a player joins/leaves the raid, if "true" this will make an alert for each raidmember who isn't in the guild.
QDKP2_ALERT_NOT_IN_GUILD = false

--if this is set to true, you'll be prompted if you want to enable the auto winner detection system each time a raid boss is killed.
QDKP2_PROMPT_AWDS = false

--when this is set to false, QDKP will automatically detect the difference of time between the server and the local
--clock and will adjust its internal clock to output (almost) the same time as the server. If you don't want this, or
--you wish to manually override the data difference, just set this to the delta time, in hours. Can be positive or
--negative.
--If you don't want any time correction, set it to 0.
QDKP2_LOCALTIME_MANUALDELTA=false

------------------------------- GUI -------------------------------------------------------
QDKP2_USE_CLASS_BASED_COLORS=true	--if this is set to true, player entries in the log will be colored by class like
					--they're in WoW raid's window.

------------------------------- LOG ----------------------------------------

QDKP2_LOG_MAXSIZE = 100		--the maximum number of voices to store in a player's log, for each session.
QDKP2_LOG_RAIDMAXSIZE = 200	--the maximum number of voices to store in the raid's log, for each session.
QDKP2_LOG_MAXSESSIONS = 25	--the maximum number of sessions you can store in your log. Please mind that increasing
				--this number will increase the amount of RAM used by QDKP, along with its CPU usage.

------------------------------ TIMER ------------------------------------------------------

-- time in minutes between timer raid tick. You MUST use a multiple of 6 like 6, 12, 18, 24,...60 etc
-- after this time the players gets the proper amount of time (eg: if you set this = 12, players will
-- get 0.2 hours every 12 minutes, if you set it to 30 they'll get 0.5 every 30 minutes etc.)
QDKP2_TIME_UNTIL_UPLOAD = 6

-- tells to show or not a message when a player gains the hourly bonus
QDKP_TIMER_SHOW_AWARDS = false

-- should the timer ticks be logged in the raid's log?
QDKP_TIMER_RAIDLOG_TICK = false


----------------------------- FORMAT -------------------------------------------------------
-- This specifies where to store (and read) DKP data, along with Alt definiton (if any)
-- IMPORTANT: If you want to move the data from officer's to public note
-- or vice-versa, you need to Backup your data, close WoW, change this value, relog your
-- character, Restore the backup and upload the changes.
-- 1: Officer Notes
-- 2: Public Notes
QDKP2_OfficerOrPublic = 1

--if the following variable is set to 1, QDKP will store the lifetime earned dkp amount in the
--officer notes. if set to 2, it will store the lifetime spent DKP amount.
QDKP2_TotalOrSpent = 1

--Due to the characters limit in the officers/public notes, QDKP limits the DKP fields to 999999.
--If you are about to break that limit, setting this to true will force QDKP to use only one letter
--to label the DKP amounts in the guild notes, thereby leaving more room for DKP amounts.
--eg: N:10 T:34 H:25.2
QDKP2_CompactNoteMode = true

--Setting this to false will disable the raiding hours counter.
--Removing the hours will make more room for DKP digits, letting bigger amounts to be stored just as
--the previous option.
QDKP2_StoreHours = true

QDKP2_NOTE_BREAK    = " " --what breaks up stuff in the note
QDKP2_NOTE_DASH	    = ":" --separator between value name and value ex. Net:54, ":" is the DASH

-- Read alt's main name from officer/public notes? (Use the fields set by QDKP2_OfficerOrPublic above)
QDKP2_AutoLinkAlts = false

 -- If the date is within this value of hours, it will be displayed in hh:mm:ss rather than the day name
QDKP2_DATE_TIME_TO_HOURS = 10

-- If the date is within this value of days, it will be displayed with the dayname rather than the complete date format
QDKP2_DATE_TIME_TO_DAYS = 4

-- These are the strings used in log reports
QDKP2_Reports_Header = "Report of $NAME's log ($TYPE)" -- this is the header of the reports
QDKP2_Reports_Tail = "End of report"

--This is the header of the TXT and HTML exports of DKP amounts.
QDKP2_Export_TXT_Header="QDKP2 - DKP Values of guild <$GUILDNAME> exported on $TIME"

--[[
NOTIFY
this is the template used by the notify function. You can change it as you wish,
including the following variables.
Available Variables:
$NAME: Name of the member
$GUILDNAME: Name of your guild
$RANK: Rank of the member
$CLASS: Class of the member
$NET: Net amount of DKP of the member
$TOTAL: Total amount of DKP of the member
$SPENT: Total amount of DKP spent by the member
$RATIO: Ratio between earned and spent by the member
$TIME: Total amount of raiding time of the member
$SESSGAINED: Amount of DKP gained by the member in the current session
$SESSSPENT: amount of DKP spent by the member in the current session
$SESSTIME: raiding time of the current session
$SESSNAME: Name of the current session

The first one is the string sent to a player when you push the "notify" button,
the second one is the string sent to a player who asked you for someone else's DKP with via "?dkp" whisper.
]]--

QDKP2_LOC_NotifyString="You have $NET DKP ($SESSGAINED gained and $SESSSPENT spent in this session)."
QDKP2_LOC_NotifyString_u3p="$NAME has $NET DKP ($SESSGAINED gained and $SESSSPENT spent in this session)."

------------------------ ON-DEMAND INFORMATIONS -----------------------------
-- The on-demand system is a simple data bot triggered by whispers, used to give informations
-- on request to other players. It's mostly made for externals members,but regular guild members
-- can benefit from it as well.
-- BEWARE: Communication addons can interfere with this feature.
-- Read the manual for more info.

-- If this is set to false, The On-Demand system will be completely disabled
QDKP2_ODS_ENABLE=true

-- If this is set to true, you will see the triggering whispers you receive from other players.
-- answer are hidden by default.
QDKP2_OS_VIEWWHSP = false

--if this is false, players will be able to ask only for their own reports and amounts.
QDKP2_IOD_REQALL = true

--can a player not in the guild ask you for data? (stored externals are assumed in guild)
QDKP_OD_EXT = false

QDKP2_ROD = true  --enables whispering you "?report or ?log to get a log report back
QDKP2_NOD = true  --enables whispering you "?dkp" to get DKP values back
QDKP2_POD = true  --enables whispering you "?price" to get item prices back
QDKP2_AOD = true  --enables whispering you "?boss" to get boss bonuses back
QDKP2_COD = true  --enables whispering you "?class" to get class' highest DKP list
QDKP2_KOD = true  --enables whispering you "?rank" to get rank's highest DKP list

--the minimum lenght of the search keywords for the Prices-on-Demand function
QDKP2_POD_MINKEYWORD=3

--The maximum number of results the Prices-on-Demand function can send back
QDKP2_POD_MAXRESULTS=8

--the minimum lenght of the search keywords for the Awards-on-Demand function
QDKP2_AOD_MINKEYWORD=3

--The maximum number of results the Awards-on-Demand function can send back
QDKP2_AOD_MAXRESULTS=4

--The maximum lenght for Classes and Ranks top dkp score list.
QDKP2_LOD_MAXLEN=6


-------------------------------- ANNOUNCEMENT ---------------------------------------------------
-- You can set QDKP to announce DKP awards, payments, events and so to the desidered
-- chat channel and/or with whispers.

-- This is the channel to announce the modifications to.
-- Can be 'guild', 'raid', 'party','officer', 'say', 'yell', raid_warning' or 'battleground'
QDKP2_AnnounceChannel='raid'

--This is the list of the events that should be announced. Set to true the ones that you want to be announced.
QDKP2_AnnounceAwards 	= true	-- This includes Raid Awards, Boss kill bonus AND the IronMan Award
QDKP2_AnnounceIronman   = false	-- This includes the start and the stop events of the IronMan bonus, but not the award itself.
QDKP2_AnnounceDKPChange = false	-- All player-based modifications, like loot payments or custom DKP modifications.
QDKP2_AnnounceNegative	= false	-- This will make an announce when a player's DKP pools becomes negative
QDKP2_AnnounceTimertick	= false	-- This will announce the timer ticks to the raid (spammy)


-- The following will send a whisper to every guild member everytime his/her DKP are changed, as a sort of notification.
-- You can also set the message that will be sent to your guild member.
-- Watch out: This feature will create a message EVERY TIME you change a player's DKP. This includes modification of existing
-- log entries. For your sanity, QDKP will hide all these whispers from your chat window.

QDKP2_AnnounceWhisper	 = false
QDKP2_AnnounceWhisperTxt = '$AWARDSPENDTXT. Your new net DKP amount is $NET'
QDKP2_AnnounceWhisperRes = '$AWARDSPENDTXT for $REASON. Your new net DKP amount is $NET'
QDKP2_AnnounceWhisperRev = 'Your unuploaded changes have been cancelled. Your net DKP amount is $AMOUNT'


-- The following is used to inform players when they failed to get an award, whispering them why they lost it.
QDKP2_AnnounceFailAw    = false -- notify a player when he fails to get a raid award / boss kill bonus?
QDKP2_AnnounceFailHo    = false -- notify a player when he fails to get the hourly bonus?
QDKP2_AnnounceFailIM    = false -- notify a player when he fails to get the Ironman award?


---------------------- WINNER DETECTION SYSTEM ------------------------------------------------
-- Here you can edit the words that will trigger the winner detection system. If QDKP finds, in
-- the raid chat, a message with a valid guild member name, a numeric value and one or more of any
-- of these words, will open the toolbox for the given guild member, with the last item seen in
-- raid chat as payment reason.
-- CaSe InSeNsItIvE

QDKP2_WinTrigger={"win","wins","won","winner","winning","sold","dkp","points","goes","awards","awarded"}


----------------------------- IRONMAN ------------------------------
-- this is the % of raid attendance (between the ironman START and FINISH marks) the player needs
-- to stay online in the raid to obtain the IronMan Bonus.
QDKP2_IRONMAN_PER_REQ = 90

--if true, the player needs to be in the raid when the ironman bonus was started to obtain the bonus.
QDKP2_IRONMAN_INWHENSTARTS = true

--if true the player needs to be in the raid when the ironman bonus is closed to obtain the bonus.
QDKP2_IRONMAN_INWHENENDS = false


------------------------ EXCEPTIONS------------------------
--This is where we set up our exceptions

QDKP2_AWARD_OFFLINE_RAIDAWARD = false		-- Can they get the Raid Awards if Offline 
QDKP2_AWARD_OFFLINE_TIMER     = false		-- Can they get the Timer Award if Offline 
QDKP2_AWARD_OFFLINE_ZEROSUM   = false		-- Can they get Zerosum DKP if Offline 
QDKP2_AWARD_OFFLINE_IRONMAN   = false		-- Can they get the Ironman Bonus if Offline 

QDKP2_AWARD_ZONE_RAIDAWARD    = "50%"		-- "%" of raid award earned if the player is in a different zone  
QDKP2_AWARD_ZONE_TIMER        = "50%"		-- "%" of timer award earned if the player is in a different zone
QDKP2_AWARD_ZONE_ZEROSUM      = "50%"		-- "%" of zerosum awarded if the player is in a different zone
QDKP2_AWARD_ZONE_IRONMAN      = "50%"		-- "%" of ironman bonus awarded if the player is in a different zone

QDKP2_AWARD_RANK_RAIDAWARD    = "25%"
QDKP2_AWARD_RANK_TIMER        = "25%"
QDKP2_AWARD_RANK_ZEROSUM      = "25%"
QDKP2_AWARD_RANK_IRONMAN      = "25%"

QDKP2_AWARD_ALT_RAIDAWARD     = true		-- Can an Alt be given the raid award?
QDKP2_AWARD_ALT_TIMER         = true		-- Can an Alt be given the timer award?
QDKP2_AWARD_ALT_ZEROSUM       = true		-- Can an Alt be given zerosum dkp?
QDKP2_AWARD_ALT_IRONMAN       = true		-- Can an Alt be given the ironman bonus?

QDKP2_AWARD_STANDBY_RAIDAWARD = "100%"		-- What % of the raid award should a standby recieve?
QDKP2_AWARD_STANDBY_TIMER     = "100%"		-- What % of the timer award should a standby recieve?
QDKP2_AWARD_STANDBY_ZEROSUM   = "100%"		-- What % of the zerosum should a standby recieve?
QDKP2_AWARD_STANDBY_IRONMAN   = "100%"		-- What % of the ironman bonus should a standby recieve?

QDKP2_AWARD_EXTERNAL_RAIDAWARD= false		-- Can an External Player (someone not in guild) recieve the raid award?
QDKP2_AWARD_EXTERNAL_TIMER    = false		-- Can an External recieve the timer award?
QDKP2_AWARD_EXTERNAL_ZEROSUM  = false		-- Should an external recieve zerosum DKP?
QDKP2_AWARD_EXTERNAL_IRONMAN  = false		-- Should an External recieve the Ironman Bonus?


QDKP2_UNDKPABLE_RANK ={ "Trial", }
QDKP2_UNDKPABLE_IRONMAN = true  --can they earn DKP from IronMan bonus? can be a %
QDKP2_UNDKPABLE_RAIDBOSS = true --can they earn DKP from Raid bonus (this include the award on boss kill) can be a %
QDKP2_UNDKPABLE_TIME = true     --can they earn DKP from hourly bonus? can be a %
QDKP2_UNDKPABLE_ZEROSUM=true    --Can they earn DKP from ZeroSum Awards? can be a %

--the ranks in this table are not seen at all by QDKP2, just as they would not be in the guild.
QDKP2_HIDE_RANK={"Twink", "Nicht Aktive", "Legionnaire", "Faules Pack", "Ehren Mitglied",}

--This is the minimum level a character must reach to be added to QDKP's guild roster.
QDKP2_MINIMUM_LEVEL=90

--should the player who is paying an item with zerosum method take part in the share?
--can be a % (eg. "50%" quotes included)
QDKP_GIVEZSTOLOOTER = false


--------------------------- UPLOAD ---------------------------------------------------------
-- Events that will trigger the automatic upload to the officer/public notes

QDKP2_SENDTRIG_RAIDAWARD = true   --upload when a raid award is done (this applies also when a boss is killed)
QDKP2_SENDTRIG_TIMER_TICK = true --upload on timer's tick
QDKP2_SENDTRIG_TIMER_AWARD = true --upload when someone has gained the hourly bonus
QDKP2_SENDTRIG_IRONMAN = true     --upload after the ironman award
QDKP2_SENDTRIG_CHARGE = true      --upload when a player is charged for a loot
QDKP2_SENDTRIG_MODIFY = true     --upload when a player's amounts are manually edited
QDKP2_SENDTRIG_ZS = true          --upload when a ZeroSum award is done


--------------------------- WARNINGS --------------------------------------------------

-- when player data is modified, alerts you if his Net DKP amount is negative
QDKP2_CHANGE_NOTIFY_NEGATIVE = true

-- when player data is modified, alerts you if the change made his Net DKP amount negative
QDKP2_CHANGE_NOTIFY_WENT_NEGATIVE = true

--------------------------- CHECK SYSTEM  --------------------------------------------------
          --!!!don't change if you don't know what you are doing.!!!--

--the timeout to close the check query
QDKP2_CHECK_TIMEOUT = 20

--during check query, every these seconds, a new guild download req is done
QDKP2_CHECK_RENEW = 3

 --after these seconds the check sys asks an updated guild cache download
QDKP2_CHECK_REFRESH_DELAY = 8

--after these second after the refresh of the guild cache, the officernotes are controlled
QDKP2_CHECK_UPLOAD_DELAY = 2

--how many times should the check system read the officier notes if the check fails?
QDKP2_CHECK_TRIES = 3

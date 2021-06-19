// Real defaults are set in functions/init/fn_initParams.sqf and should match the descriptions below
// 9999 is a special value that causes that parameter to be loaded from the last save, if any
// 9998 is a reserved value and should not be used

class Params
{
    class howTo0
    {
        title = "HOW TO USE ANTISTASI PARAMETERS";
        values[] = {""};
        texts[] = {""};
        default = "";
    };
    class howTo1
    {
        title = "Default values will attempt to load from the save. If not found, the value in brackets will be used instead";
        values[] = {""};
        texts[] = {""};
        default = "";
    };
    class howTo2
    {
        title = "Setting any other value will override that parameter with the chosen value";
        values[] = {""};
        texts[] = {""};
        default = "";
    };
    class howToSpacer
    {
        title = "";
        values[] = {""};
        texts[] = {""};
        default = "";
    };
    class loadSave
    {
        title = "Load last Persistent Save";
        values[] = {1,0};
        texts[] = {"Yes","No"};
        default = 1;
    };
    class gameMode
    {
        title = "Game Mode - Do NOT change this mid mission";
        values[] = {9999,1,2,3};
        texts[] = {"Default (Reb vs Gov vs Inv)","Reb vs Gov vs Inv","Reb vs Gov & Inv","Reb vs Gov"};
        default = 1;
    };
    class autoSave
    {
        title = "Enable Autosave (every X minutes)";
        values[] = {9999,1,0};
        texts[] = {"Default (Yes)","Yes","No"};
        default = 1;
    };
    class autoSaveInterval
    {
        title = "Time between autosaves (in minutes)";
        values[] = {9999,600,1200,1800,3600,5400};
        texts[] = {"Default (60)","10","20","30","60","90"};
        default = 3600;
    };
    class membership
    {
        title = "Enable Server Membership";
        values[] = {9999,1,0};
        texts[] = {"Default (Yes)","Yes","No"};
        default = 1;
    };
    class switchComm
    {
        title = "Enable Commander Switch (highest ranked player)";
        values[] = {9999,1,0};
        texts[] = {"Default (Yes)","Yes","No"};
        default = 1;
    };
    class tkPunish
    {
        title = "Enable Teamkill Punish";
        values[] = {9999,1,0};
        texts[] = {"Default (Yes)","Yes","No"};
        default = 1;
    };
    class mRadius
    {
        title = "Max distance from HQ for tasks";
        values[] = {9999,2000,4000,6000,8000,10000,12000};
        texts[] = {"Default (4000)","2000","4000","6000","8000","10000","12000"};
        default = 4000;
    };
    class allowPvP
    {
        title = "Allow PvP Slots";
        values[] = {9999,1,0};
        texts[] = {"Default (Yes)","Yes","No"};
        default = 0;
    };
    class pMarkers
    {
        title = "Allow Friendly Player Markers";
        values[] = {9999,1,0};
        texts[] = {"Default (Yes)","Yes","No"};
        default = 0;
    };
    class AISkill
    {
        title = "Mission Difficulty";
        values[] = {9999,1,2,3};
        texts[] = {"Default (Normal)","Easy","Normal","Hard"};
        default = 3;
    };
    class unlockItem
    {
        title = "Number of the same item required to unlock";
        values[] = {9999,25,30,35,40,45,50};
        texts[] = {"Default (25)","25","30","35","40","45","50"};
        default = 25;
    };
    class memberOnlyMagLimit
    {
        title = "Number of magazines needed for guests to be able to use them";
        values[] = {9999,10,20,30,40,50,60};
        texts[] = {"Default (40)","10","20","30","40","50","60"};
        default = 30;
    };
    class civTraffic
    {
        title = "Rate of Civ Traffic";
        values[] = {9999,0,1,2,4};
        texts[] = {"Default (Medium)","None","Low","Medium","High"};
        default = 4;
    };
    class allowMembersFactionGarageAccess
    {
        title = "Allow members to access the faction garage";
        values[] = {9999,1,0};
        texts[] = {"Default (Yes)","Yes","No"};
        default = 1;
    };
    class personalGarageMax
    {
        title = "Max personal garage slots";
        values[] = {9999,0,2,5,10};
        texts[] = {"Default (2)","Unlimited","2","5","10"};
        default = 0;
    };
    class allowFT
    {
        title = "Fast Travel Targets Allowed";
        values[] = {9999,0,1};
        texts[] = {"Default (Airports & HQ)","Any friendly position","Only Airports & HQ"};
        default = 0;
    };
    class napalmEnabled
    {
        title = "Enable Napalm Bombing for AI";
        values[] = {9999,0,1};
        texts[] = {"Default (No)","No","Yes"};
        default = 1;
    };
    class teamSwitchDelay
    {
        title = "Delay After Leaving Before a Player Can Join Another Team";
        values[] = {9999, 0, 900, 1800, 3600};
        texts[] = {"Default (60 mins)","No delay","15 minutes","30 minutes","60 minutes"};
        default = 0;
    };
    class unlockedUnlimitedAmmo
    {
        title = "Do Unlocked Weapons Automatically Unlock Their Standard Magazine?";
        values[] = {9999,1,0};
        texts[] = {"Default (No)","Yes","No"};
        default = 1;
    };
    class allowGuidedLaunchers
    {
        title = "Should Guided Launchers become unlocked?";
        values[] = {9999,1,0};
        texts[] = {"Default (No)","Yes","No"};
        default = 1;
    };
    class startWithLongRangeRadio
    {
        title = "[TFAR] Start with Long Range Radio?";
        values[] = {9999,1,0};
        texts[] = {"Default (Yes)","Yes","No"};
        default = 0;
    };
    class helmetLossChance
    {
        title = "Chance of helmet loss on headshots";
        values[] = {9999,0,33,66,100};
        texts[] = {"Default (Sometimes)","Never","Sometimes","Often","Always"};
        default = 33;
    };
    class aiControlTime
    {
        title = "AI Control Time Limit";
        values[] = {9999,60,120,300,900,1800};
        texts[] = {"Default (60 seconds)","1 minute","2 minutes","5 minutes","15 minutes", "30 minutes"};
        default = 300;
    };
    class Spacer11
    {
        title = "";
        values[] = {""};
        texts[] = {""};
        default = "";
    };
     class Spacer60
     {
          title = "";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class Spacer61
     {
          title = "CUP SETTINGS";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class cupOccupantFaction
     {
          title="Select Occupant Faction";
		values[]={9999, 0, 1, 2, 3};
		texts[]={"Default (USAF)", "USAF", "BAF", "CDF", "HIL"};
		default = 0;
     };
     class Spacer62
     {
          title = "";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class Spacer71
     {
          title = "RHS SETTINGS";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class rhsOccupantFaction
     {
          title="Select Occupant Faction";
		values[]={9999, 0, 1};
		texts[]={"Default (USAF)", "USAF", "CDF"};
		default = 0;
     };
     class Spacer231
     {
          title = "";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class Spacer80
     {
          title = "3CB FACTIONS SETTINGS";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class threecbfOccupantFaction
     {
          title="Select Occupant Faction";
		values[]={9999, 0, 1, 2};
		texts[]={"Default (USAF)", "USAF", "CDF", "HIL"};
		default = 0;
     };

     class Spacer72
     {
          title = "";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class Spacer51
     {
          title = "ANTISTASI PLUS SETTINGS";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class timeMultiplier
     {
          title="Time Multiplier";
		values[]={9999, 1, 6, 12, 24};
		texts[]={"Default (1:1 (Normal))","1:1 (Normal)","1:6 (Day = 4 Hours)","1:12 (Day = 2 Hours)","1:24 (Day = 1 Hour)"};
		default = 4;
     };
     class randomEvents
     {
          title = "Enable Random Events";
          values[] = {9999, 1, 0};
          texts[] =  {"Default (Yes)","Yes","No"};
          default = 1;
     };
     class unflipPersonCount
     {
          title="How many persons required to unflip vehicle";
		values[]={9999, 1, 2, 3, 4};
		texts[]={"Default (1)","1","2","3","4"};
		default = 1;
     };
     class magRepack
     {
          title = "Enable Mag Repack";
          values[] = {9999, 1, 0};
          texts[] =  {"Default (Yes)", "Yes", "No"};
          default = 0;
     };
     class playerIcons
     {
          title = "Show 3D icons above players";
          values[] = {9999, 0, 1 };
          texts[] =  {"Default (Only on unconscious players)", "Don't show", "Only on unconscious players"};
          default = 1;
     };
     class fastTravelEnemyCheck
     {
          title = "Fast Travel Enemies Check";
          values[] = {9999, 1, 0};
          texts[] =  {"Default (Check for player only)", "Check for player only", "Check for player squad (Vanilla Antistasi Style)"};
          default = 1;
     };
     class playerStartingMoney
     {
          title = "Initial Player Money";
          values[] = {9999, 0, 100, 200, 500, 1000};
          texts[] =  {"Default (200)", "0", "100", "200", "500","1000"};
          default = 500;
     };
     class rallyPointSpawnCount
     {
          title = "Rally Point Travel Points";
          values[] = {9999, 10, 15, 20, 30};
          texts[] =  {"Default (10)", "10", "15", "20","30"};
          default = 15;
     };
     class factionsDefeat
     {
          title = "Enemy Factions Defeat";
          values[] = {9999, 1, 0};
          texts[] =  {"Default (Factions can be defeated for good)", "Factions can be defeated for good", "Disable"};
          default = 1;
     };
     
     class Spacer307
     {
          title = "";
          values[] = {""};
          texts[] = {""};
          default = "";
     };

    class Kart
    {
        title = "Allow Items and Vehicles from Karts DLC?";
        values[] = {9999,1,0};
        texts[] = {"Default (No)","Yes","No"};
        default = 1;
    };
    class Mark
    {
        title = "Allow Items and Vehicles from Marksman DLC?";
        values[] = {9999,1,0};
        texts[] = {"Default (No)","Yes","No"};
        default = 1;
    };
    class Heli
    {
        title = "Allow Items and Vehicles from Heli DLC?";
        values[] = {9999,1,0};
        texts[] = {"Default (No)","Yes","No"};
        default = 1;
    };
    class Expansion
    {
        title = "Allow Items and Vehicles from Apex DLC?";
        values[] = {9999,1,0};
        texts[] = {"Default (No)","Yes","No"};
        default = 1;
    };
    class Jets
    {
        title = "Allow Items and Vehicles from Jets DLC?";
        values[] = {9999,1,0};
        texts[] = {"Default (No)","Yes","No"};
        default = 1;
    };
    class Orange
    {
        title = "Allow Items and Vehicles from Laws of War DLC?";
        values[] = {9999,1,0};
        texts[] = {"Default (No)","Yes","No"};
        default = 1;
    };
    class Tanks
    {
        title = "Allow Items and Vehicles from Tanks DLC?";
        values[] = {9999,1,0};
        texts[] = {"Default (No)","Yes","No"};
        default = 1;
    };
    class GlobMob
    {
        title = "Allow Items and Vehicles from Global Mobilization DLC?";
        values[] = {9999,1,0};
        texts[] = {"Default (No)","Yes","No"};
        default = 0;
    };
    class Enoch
    {
        title = "Allow Items and Vehicles from Contact DLC?";
        values[] = {9999,1,0};
        texts[] = {"Default (No)","Yes","No"};
        default = 1;
    };
    class OfficialMod
    {
        title = "Allow ADR-97 DLC?";
        values[] = {9999,1,0};
        texts[] = {"Default (No)","Yes","No"};
        default = 1;
    };
    class AoW
    {
        title = "Allow Art of War DLC?";
        values[] = {9999,1,0};
        texts[] =  {"Default (No)","Yes","No"};
        default = 1;
    };
    class Spacer0
    {
        title = "";
        values[] = {""};
        texts[] = {""};
        default = "";
    };
    class AdvancedParams
    {
        title = "ADVANCED USERS ONLY";
        values[] = {""};
        texts[] = {""};
        default = "";
    };
     class LogLevel
     {
        title = "Logging Level (Amount of detail in .rpt file)";
        values[] = {9999,1,2,3};
        texts[] = {"Default (Info)", "Error", "Info", "Debug"};
        default = 1;
     };
     class SystemChatLogMessages
     {
          title = "Post Log Messages to systemChat (Debug)";
          values[] = {9999, 1, 0};
          texts[] = {"Default (No)", "Yes", "No"};
          default = 0;
     };
     class SupportOptions
     {
          title = "SUPPORT OPTIONS";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class allowUnfairSupports
     {
          title = "[Experimental - Use at own risk] Allow unfair supports to be used by the enemy";
          values[] = {9999, 0, 1};
          texts[] = {"Default (Not Allowed)", "Not allowed", "Allowed"};
          default = 1;
     }
     class allowFuturisticSupports
     {
          title = "[Experimental - Use at own risk](Requires unfair supports) Allow futuristic supports to be used by the enemy";
          values[] = {9999, 0, 1};
          texts[] = {"Default (Not Allowed)", "Not allowed", "Allowed"};
          default = 1;
     }
     class CrateOptions
     {
          title = "LOOT CRATE OPTIONS";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class truelyRandomCrates
     {
          title = "[Experimental] Truely Random Crates: Remove all balance checks from Crates";
          values[] = {9999, 0, 1};
          texts[] = {"Default (False)", "False", "True"};
          default = 0;
     };
     class cratePlayerScaling
     {
          title = "Decrease loot quantity as player count increases? (Yes is recommended for balance reasons)";
          values[] = {9999, 0, 1};
          texts[] = {"Default (True)", "False", "True"};
          default = 1;
     };
     class crateWepTypeMax
     {
          title = "Maximum Weapon Types in Crates";
          values[] = {9999,0,2,4,6,8,12,16};
          texts[] = {"Default (9)","1","3","5","7","9","13","17"};
          default = 8;
     };
     class crateWepNumMax
     {
          title = "Maximum Weapon Quantity in Crates";
          values[] = {9999,0,1,3,5,8,10,15};
          texts[] = {"Default (8)","None","1","3","5","8","10","15"};
          default = 10;
     };
     class Spacer1
     {
          title = "";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class crateItemTypeMax
     {
          title = "Maximum Item Types in Crates";
          values[] = {9999,0,2,4,9};
          texts[] = {"Default (5)","1","3","5","10"};
          default = 4;
     };
     class crateItemNumMax
     {
          title = "Maximum Item Quantity in Crates";
          values[] = {9999,0,1,3,5,10,15};
          texts[] = {"Default (5)","None","1","3","5","10","15"};
          default = 10;
     };
     class Spacer2
     {
          title = "";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class crateAmmoTypeMax
     {
          title = "Maximum Ammo Types in Crates";
          values[] = {9999,0,2,4,6,9,14,19};
          texts[] = {"Default (7)","1","3","5","7","10","15","20"};
          default = 6;
     };
     class crateAmmoNumMax
     {
          title = "Maximum Ammo Quantity in Crates";
          values[] = {9999,0,1,3,5,10,15,20,25,30};
          texts[] = {"Default (20)","None","1","3","5","10","15","20","25","30"};
          default = 25;
     };
     class Spacer3
     {
          title = "";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class crateExplosiveTypeMax
     {
          title = "Maximum Explosive Types in Crates";
          values[] = {9999,0,2,4,9};
          texts[] = {"Default (3)","1","3","5","10"};
          default = 2;
     };
     class crateExplosiveNumMax
     {
          title = "Maximum Explosive Quantity in Crates";
          values[] = {9999,0,1,3,5,10,15};
          texts[] = {"Default (5)","None","1","3","5","10","15"};
          default = 5;
     };
     class Spacer4
     {
          title = "";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class crateAttachmentTypeMax
     {
          title = "Maximum Attachment Types in Crates";
          values[] = {9999,0,2,4,6,9,14,19};
          texts[] = {"Default (7)","1","3","5","7","10","15","20"};
          default = 9;
     };
     class crateAttachmentNumMax
     {
          title = "Maximum Attachment Quantity in Crates";
          values[] = {9999,0,1,3,5,10,15,20,25,30};
          texts[] = {"Default (15)","None","1","3","5","10","15","20","25","30"};
          default = 25;
     };
     class Spacer5
     {
          title = "";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class crateBackpackTypeMax
     {
          title = "Maximum Backpack Types in Crates";
          values[] = {9999,0,2,4,9};
          texts[] = {"Default (0)","1","3","5","10"};
          default = 4;
     };
     class crateBackpackNumMax
     {
          title = "Maximum Backpack Quantity in Crates";
          values[] = {9999,0,1,3,5,10,15};
          texts[] = {"Default (3)","None","1","3","5","10","15"};
          default = 10;
     };
     class Spacer6
     {
          title = "";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class crateVestTypeMax
     {
          title = "Maximum Vest Types in Crates";
          values[] = {9999,0,2,4,9};
          texts[] = {"Default (0)","1","3","5","10"};
          default = 4;
     };
     class crateVestNumMax
     {
          title = "Maximum Vest Quantity in Crates";
          values[] = {9999,0,1,3,5,10,15};
          texts[] = {"Default (3)","None","1","3","5","10","15"};
          default = 10;
     };
     class Spacer7
     {
          title = "";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class crateHelmetTypeMax
     {
          title = "Maximum Helmet Types in Crates";
          values[] = {9999,0,2,4,9};
          texts[] = {"Default (0)","1","3","5","10"};
          default = 4;
     };
     class crateHelmetNumMax
     {
          title = "Maximum Helmet Quantity in Crates";
          values[] = {9999,0,1,3,5,10,15};
          texts[] = {"Default (0)","None","1","3","5","10","15"};
          default = 10;
     };
     class Spacer8
     {
          title = "";
          values[] = {""};
          texts[] = {""};
          default = "";
     };
     class crateDeviceTypeMax
     {
          title = "Maximum Device Backpack Types in Crates";
          values[] = {9999,0,2,4,9};
          texts[] = {"Default (3)","1","3","5","10"};
          default = 2;
     };
     class crateDeviceNumMax
     {
          title = "Maximum Device Backpack Quantity in Crates";
          values[] = {9999,0,1,3,5,10,15};
          texts[] = {"Default (3)","None","1","3","5","10","15"};
          default = 5;
     };
};
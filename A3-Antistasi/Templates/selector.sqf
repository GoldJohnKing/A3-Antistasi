/*
Author: Meerkat
  This file controls the selection of templates based on the mods loaded and map used.
  When porting new mods/maps be sure to add them to their respective sections!

Scope: Server
Environment: Any (Inherits scheduled from initVarServer)
Public: No
Dependencies:
  <SIDE> teamplayer The side of the rebels, usually only independent or west.
  <FILES> "Templates\" Assumes the existence of files under "Templates\". Please check here before deleting/renaming one.
*/
private _filename = "selector.sqf";
//Map checker
private _aridMaps = ["altis"];
private _tropicalMaps = ["panthera3", "tanoa", "UMB_Colombia"];
private _temperateMaps = ["enoch", "vt7", "cup_chernarus_a3", "napf", "abramia", "taviana"];
//Mod selector

private _terrainName = toLower worldName;

//Reb Templates
switch(true) do{
    case (A3A_has3CBFactions): {
        switch(true) do {
            case (_terrainName in _tropicalMaps): {
                ["Templates\NewTemplates\3CBF\3CBF_Reb_SDK.sqf", independent] call A3A_fnc_compatabilityLoadFaction;
                [2, "Using Tropical SDK Template", _filename] call A3A_fnc_log;
            };
            case (_terrainName in _temperateMaps): {
                ["Templates\NewTemplates\3CBF\3CBF_Reb_CHDZZ.sqf", independent] call A3A_fnc_compatabilityLoadFaction;
                [2, "Using Temperate CHDZZ Template", _filename] call A3A_fnc_log;
            };
            default {
                ["Templates\NewTemplates\3CBF\3CBF_Reb_FIA.sqf", independent] call A3A_fnc_compatabilityLoadFaction;
                [2, "Using Arid FIA Template", _filename] call A3A_fnc_log;
            };
        };
    };
    case (A3A_hasRHS): {
        switch(true) do {
            case (_terrainName in _temperateMaps);
            case (_terrainName in _tropicalMaps): {
                ["Templates\NewTemplates\RHS\RHS_Reb_NAPA_Temperate.sqf", independent] call A3A_fnc_compatabilityLoadFaction;
                [2, "Using Temperate Napa Template", _filename] call A3A_fnc_log;
            };
            default {
                ["Templates\NewTemplates\RHS\RHS_Reb_FIA_Arid.sqf", independent] call A3A_fnc_compatabilityLoadFaction;
                [2, "Using arid Napa Templates", _filename] call A3A_fnc_log;
            };
        };
    };
    case (A3A_hasAu): {
        ["Templates\NewTemplates\Au\Au_Reb_NAPA_Temperate.sqf", independent] call A3A_fnc_compatabilityLoadFaction;
        [2, "Using Temperate NAPA Template", _filename] call A3A_fnc_log;
    };
    case (A3A_hasCup): {
        switch(true) do {
            case (_terrainName in _temperateMaps);
            case (_terrainName in _tropicalMaps): {
                ["Templates\NewTemplates\Cup\Cup_Reb_NAPA_Temperate.sqf", independent] call A3A_fnc_compatabilityLoadFaction;
                [2, "Using Temperate NAPA Template", _filename] call A3A_fnc_log;
            };
            default {
                ["Templates\NewTemplates\CUP\CUP_Reb_FIA_Arid.sqf", independent] call A3A_fnc_compatabilityLoadFaction;
                [2, "Using arid FIA Templates", _filename] call A3A_fnc_log;
            };
        };
    };
    case (A3A_hasAegis): {
        switch(true) do {
            ["Templates\NewTemplates\Aegis\Aegis_Reb_CHDKZ.sqf", independent] call A3A_fnc_compatabilityLoadFaction;
            [2, "Using Temperate CHDKZ Template", _filename] call A3A_fnc_log;
        };
    };
    default {
        switch(true) do {
            case (_terrainName in _temperateMaps);
            case (_terrainName in _tropicalMaps): {
                ["Templates\NewTemplates\Vanilla\Vanilla_Reb_FIA_Temperate.sqf", independent] call A3A_fnc_compatabilityLoadFaction;
                [2, "Using temperate FIA Template", _filename] call A3A_fnc_log;
            };
            default {
                ["Templates\NewTemplates\Vanilla\Vanilla_Reb_FIA_Arid.sqf", independent] call A3A_fnc_compatabilityLoadFaction;
                [2, "Using arid FIA Templates", _filename] call A3A_fnc_log;
            };
        };
    };
};
//Occ Templates
switch(true) do {
    case (A3A_has3CBFactions): {
        switch(threecbfOccupantFaction) do {
            case (0): { //USAF
                switch(true) do {
                    case (_terrainName in _temperateMaps);
                    case (_terrainName in _tropicalMaps): {
                        ["Templates\NewTemplates\3CBF\3CBF_AI_USAF_Temperate.sqf", west] call A3A_fnc_compatabilityLoadFaction;
                        [2, "Using temperate USAF Template", _filename] call A3A_fnc_log;
                    };
                    default {
                        ["Templates\NewTemplates\3CBF\3CBF_AI_USAF_Arid.sqf", west] call A3A_fnc_compatabilityLoadFaction;
                        [2, "Using arid USAF Template", _filename] call A3A_fnc_log;
                    };
                };
            };
            case (1): { //CDF
                ["Templates\NewTemplates\3CBF\3CBF_AI_CDF.sqf", west] call A3A_fnc_compatabilityLoadFaction;
                [2, "Using CDF Template", _filename] call A3A_fnc_log;
            };
            case (2): { //HIL
                ["Templates\NewTemplates\3CBF\3CBF_AI_HIL.sqf", west] call A3A_fnc_compatabilityLoadFaction;
                [2, "Using HIL Template", _filename] call A3A_fnc_log;
            };
        };
    };
    case (A3A_hasRHS): {
        switch(rhsOccupantFaction) do {
            case (0): { //USAF
                switch(true) do {
                    case (_terrainName in _temperateMaps);
                    case (_terrainName in _tropicalMaps): {
                        ["Templates\NewTemplates\RHS\RHS_AI_USAF_Temperate.sqf", west] call A3A_fnc_compatabilityLoadFaction;
                        [2, "Using temperate USAF Template", _filename] call A3A_fnc_log;
                    };
                    default {
                        ["Templates\NewTemplates\RHS\RHS_AI_USAF_Arid.sqf", west] call A3A_fnc_compatabilityLoadFaction;
                        [2, "Using arid USAF Template", _filename] call A3A_fnc_log;
                    };
                };
            };
            case (1): { //CDF
                ["Templates\NewTemplates\RHS\RHS_AI_CDF.sqf", west] call A3A_fnc_compatabilityLoadFaction;
                [2, "Using CDF Template", _filename] call A3A_fnc_log;
            };
        };
    };
    case (A3A_hasAu): {
        ["Templates\NewTemplates\Au\Au_AI_BAF_Temperate.sqf", west] call A3A_fnc_compatabilityLoadFaction;
        [2, "Using AU Temperate BAF Template", _filename] call A3A_fnc_log;
    };
    case (A3A_hasCup): {
        switch(cupOccupantFaction) do {
            case (0): { //USAF
                switch(true) do {
                    case (_terrainName in _temperateMaps);
                    case (_terrainName in _tropicalMaps): {
                        ["Templates\NewTemplates\CUP\CUP_AI_USAF_Temperate.sqf", west] call A3A_fnc_compatabilityLoadFaction;
                        [2, "Using arctic USAF Template", _filename] call A3A_fnc_log;
                    };
                    default {
                        ["Templates\NewTemplates\CUP\Cup_AI_USAF_Arid.sqf", west] call A3A_fnc_compatabilityLoadFaction;
                        [2, "Using arid USAF Templates", _filename] call A3A_fnc_log;
                    };
                };
            };
            case (1): { //BAF
                switch(true) do {
                    case (_terrainName in _temperateMaps);
                    case (_terrainName in _tropicalMaps): {
                        ["Templates\NewTemplates\Cup\Cup_AI_BAF_Temperate.sqf", west] call A3A_fnc_compatabilityLoadFaction;
                        [2, "Using temperate BAF Template", _filename] call A3A_fnc_log;
                    };
                    default {
                        ["Templates\NewTemplates\Cup\Cup_AI_BAF_Arid.sqf", west] call A3A_fnc_compatabilityLoadFaction;
                        [2, "Using arid BAF Templates", _filename] call A3A_fnc_log;
                    };
                };
            };
            case (2): { //CDF
                switch(true) do {
                    ["Templates\NewTemplates\Cup\Cup_AI_CDF.sqf", west] call A3A_fnc_compatabilityLoadFaction;
                    [2, "Using CDF Template", _filename] call A3A_fnc_log;
                };
            };
            case (3): { //HIL
                ["Templates\NewTemplates\Cup\Cup_AI_HIL.sqf", west] call A3A_fnc_compatabilityLoadFaction;
                [2, "Using HIL Template", _filename] call A3A_fnc_log;
            };
        };
    };
    case (A3A_hasAegis): {
        ["Templates\NewTemplates\Aegis\Aegis_AI_EUROFOR.sqf", west] call A3A_fnc_compatabilityLoadFaction;
        [2, "Using Aegis EUROFOR Template", _filename] call A3A_fnc_log;
    };
    default {
        switch(true) do {
            case (_terrainName in _temperateMaps);
            case (_terrainName in _tropicalMaps): {
                ["Templates\NewTemplates\Vanilla\Vanilla_AI_NATO_Temperate.sqf", west] call A3A_fnc_compatabilityLoadFaction;
                [2, "Using temperate NATO Template", _filename] call A3A_fnc_log;
            };
            default {
                ["Templates\NewTemplates\Vanilla\Vanilla_AI_NATO_Arid.sqf", west] call A3A_fnc_compatabilityLoadFaction;
                [2, "Using arid NATO Template", _filename] call A3A_fnc_log;
            };
        };
    };
};
//Inv Templates
switch(true) do{
    case (A3A_has3CBFactions): {
        switch(true) do {
            case (_terrainName in _temperateMaps);
            case (_terrainName in _tropicalMaps): {
                ["Templates\NewTemplates\3CBF\3CBF_AI_AFRF_Temperate.sqf", east] call A3A_fnc_compatabilityLoadFaction;
                [2, "Using temperate AFRF Template", _filename] call A3A_fnc_log;
            };
            default {
                ["Templates\NewTemplates\3CBF\3CBF_AI_AFRF_Arid.sqf", east] call A3A_fnc_compatabilityLoadFaction;
                [2, "Using arid AFRF Template", _filename] call A3A_fnc_log;
            };
        };
    };
    case (A3A_hasRHS): {
        switch(true) do {
            case (_terrainName in _temperateMaps);
            case (_terrainName in _tropicalMaps): {
                ["Templates\NewTemplates\RHS\RHS_AI_AFRF_Temperate.sqf", east] call A3A_fnc_compatabilityLoadFaction;
                [2, "Using temperate AFRF Template", _filename] call A3A_fnc_log;
            };
            default {
                ["Templates\NewTemplates\RHS\RHS_AI_AFRF_Arid.sqf", east] call A3A_fnc_compatabilityLoadFaction;
                [2, "Using arid AFRF Template", _filename] call A3A_fnc_log;
            };
        };
    };
    case (A3A_hasAu): {
        ["Templates\NewTemplates\Au\Au_AI_PLA_Temperate.sqf", east] call A3A_fnc_compatabilityLoadFaction;
        [2, "Using AU Temperate CSAT Template", _filename] call A3A_fnc_log;
    };
    case (A3A_hasCup): {
        switch(true) do {
            case (_terrainName in _temperateMaps);
            case (_terrainName in _tropicalMaps): {
                ["Templates\NewTemplates\Cup\Cup_AI_AFRF_Temperate.sqf", east] call A3A_fnc_compatabilityLoadFaction;
                [2, "Using temperate AFRF Template", _filename] call A3A_fnc_log;
            };
            default {
                ["Templates\NewTemplates\Cup\Cup_AI_AFRF_Arid.sqf", east] call A3A_fnc_compatabilityLoadFaction;
                [2, "Using arid AFRF Template", _filename] call A3A_fnc_log;
            };
        };
    };
    case (A3A_hasAegis): {
        ["Templates\NewTemplates\Aegis\Aegis_AI_AFRF.sqf", east] call A3A_fnc_compatabilityLoadFaction;
        [2, "Using Aegis Russia Template", _filename] call A3A_fnc_log;
    };
    default {
        switch(true) do {//This one (vanilla) works differently so that we don't get DLC kit on modded maps.
            case (_terrainName in _temperateMaps);
            case (_terrainName in _tropicalMaps): {
                ["Templates\NewTemplates\Vanilla\Vanilla_AI_CSAT_Temperate.sqf", east] call A3A_fnc_compatabilityLoadFaction;
                [2, "Using temperate CSAT Template", _filename] call A3A_fnc_log;
            };
            default {
                ["Templates\NewTemplates\Vanilla\Vanilla_AI_CSAT_Arid.sqf", east] call A3A_fnc_compatabilityLoadFaction;
                [2, "Using arid CSAT Template", _filename] call A3A_fnc_log;
            };
        };
    };
};
//Civ Templates
switch(true) do{
    case (A3A_has3CBFactions): {
        ["Templates\NewTemplates\3CBF\3CBF_Civ.sqf", civilian] call A3A_fnc_compatabilityLoadFaction;
        [2, "Using 3CB Civ template", _filename] call A3A_fnc_log;
    };
    case (A3A_hasCup): {
        switch (true) do {
            case (_terrainName in _temperateMaps): {
                ["Templates\NewTemplates\CUP\Cup_Civ_Temperate.sqf", civilian] call A3A_fnc_compatabilityLoadFaction;
                [2, "Using CUP Civ Temperate template", _filename] call A3A_fnc_log;
            };
            default {
                ["Templates\NewTemplates\CUP\Cup_Civ_Arid.sqf", civilian] call A3A_fnc_compatabilityLoadFaction;
                [2, "Using CUP Civ default template", _filename] call A3A_fnc_log;
            };
        };
    };
    case (A3A_hasRHS): {
        ["Templates\NewTemplates\RHS\RHS_Civ.sqf", civilian] call A3A_fnc_compatabilityLoadFaction;
        [2, "Using RHS Civ Template", _filename] call A3A_fnc_log;
    };
    default {
        ["Templates\NewTemplates\Vanilla\Vanilla_Civ.sqf", civilian] call A3A_fnc_compatabilityLoadFaction;
        [2, "Using Vanilla Civ Template", _filename] call A3A_fnc_log;
    };
};

// This will be adapted at a later step
[2,"Reading Addon mod files.",_fileName] call A3A_fnc_log;
//Addon pack loading goes here.
if (A3A_hasIvory) then {
  call compile preProcessFileLineNumbers "Templates\AddonVics\ivory_Civ.sqf";
  [2, "Using Addon Ivory Cars Template", _filename] call A3A_fnc_log;
};
if (A3A_hasTCGM) then {
  call compile preProcessFileLineNumbers "Templates\AddonVics\tcgm_Civ.sqf";
  [2, "Using Addon TCGM_BikeBackPack Template", _filename] call A3A_fnc_log;
};
if (A3A_hasD3S) then {
  call compile preProcessFileLineNumbers "Templates\AddonVics\d3s_Civ.sqf";
  [2, "Using Addon D3S Cars Template", _filename] call A3A_fnc_log;
};
if (A3A_hasRDS) then {
  call compile preProcessFileLineNumbers "Templates\AddonVics\rds_Civ.sqf";
  [2, "Using Addon RDS Cars Template", _filename] call A3A_fnc_log;
};

//Logistics node loading is done here
[2,"Reading Logistics Node files.",_fileName] call A3A_fnc_log;
call compileScript ["Templates\NewTemplates\Vanilla\Vanilla_Logistics_Nodes.sqf"];//Always call vanilla as it initialises the arrays.
if (A3A_hasRHS) then {call compileScript ["Templates\NewTemplates\RHS\RHS_Logistics_Nodes.sqf"]};
if (A3A_has3CBFactions) then {call compileScript ["Templates\NewTemplates\3CBF\3CBF_Logistics_Nodes.sqf"]};
if (A3A_hasCup) then {call compileScript ["Templates\NewTemplates\CUP\Cup_Logistics_Nodes.sqf"];};
if (A3A_hasAegis) then {call compileScript ["Templates\NewTemplates\Aegis\Aegis_Logistics_Nodes.sqf"];};
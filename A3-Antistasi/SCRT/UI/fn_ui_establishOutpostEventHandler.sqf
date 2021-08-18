params ["_mode"];

if(_mode == "ADD") then {
    [
        "establishOutpost",
        "onMapSingleClick",
        {
            playSound "readoutClick";

            if (outpostType == "WATCHPOST" && {isOnRoad _pos}) exitWith {
                [
                    "FAIL",
                    "Establish Outpost",  
                    parseText "Watchpost should be not on road.", 
                    30
                ] spawn SCRT_fnc_ui_showMessage;
            };

            if (outpostType == "ROADBLOCK" && {!isOnRoad _pos}) exitWith {
                [
                    "FAIL",
                    "Establish Outpost",  
                    parseText "Roadblock should be on road.", 
                    30
                ] spawn SCRT_fnc_ui_showMessage;
            };

            switch (outpostType) do {
                case ("WATCHPOST"): {
                    [_pos] spawn SCRT_fnc_outpost_createWatchpost;
                };
                case ("ROADBLOCK"): {
                    [_pos] spawn SCRT_fnc_outpost_createRoadblock;
                };
                case ("AA"): {
                    [_pos] spawn SCRT_fnc_outpost_createAa;
                };
                case ("AT"): {
                    [_pos] spawn SCRT_fnc_outpost_createAt;
                };
                default {
                    [1, "Bad outpost type.", "establishOutpostEventHandler"] call A3A_fnc_log;
                };
            };
        },
        []
	] call BIS_fnc_addStackedEventHandler;
} else {
    ["establishOutpost", "onMapSingleClick"] call BIS_fnc_removeStackedEventHandler;
};
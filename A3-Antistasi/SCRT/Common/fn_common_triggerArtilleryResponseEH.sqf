params ["_unit"];


private _exit = false;
private _type = typeOf _unit;
if (_type in [vehNATOMRLS, vehCSATMRLS]) then {
    private _gunner  = gunner _unit;
    if (side _unit != teamPlayer) exitWith {
        _exit = true;
    };
    if (!isPlayer _gunner) exitWith {
        _exit = true;
    };
    if (_gunner == objNull) exitWith {
        _exit = true;
    };
};

if (_exit) exitWith {};

private _artillery = _this select 0;
private _dataX = _artillery getVariable ["detection",[position _artillery,0]];
private _positionX = position _artillery;
_chance = _dataX select 1;
if ((_positionX distance (_dataX select 0)) < 300) then {
    _chance = _chance + 2;
}
else {
    _chance = 0;
};

if (random 100 < _chance) then {
    { if ((side _x == Occupants) or (side _x == Invaders)) then {_x reveal [_artillery,4]}} forEach allUnits;
    if (_artillery distance posHQ < 300) then {
        if !("DEF_HQ" in A3A_activeTasks) then {
            _LeaderX = leader (gunner _artillery);
            if (!isPlayer _LeaderX) then
            {
                [[],"A3A_fnc_attackHQ"] remoteExec ["A3A_fnc_scheduler",2];
            };
        };
    }
    else {
        _possibleSites = airportsX + milbases;
        _bases = _possibleSites select {(getMarkerPos _x distance _artillery < distanceForAirAttack) and ([_x,true] call A3A_fnc_airportCanAttack) and (sidesX getVariable [_x,sideUnknown] != teamPlayer)};
        if (count _bases > 0) then
        {
            _base = [_bases,_positionX] call BIS_fnc_nearestPosition;
            _sideX = sidesX getVariable [_base,sideUnknown];
            [_artillery, 1, ["AIRSTRIKE", "MORTAR", "QRF", "CANNON", "CARPETBOMB", "GUNSHIP"], _sideX, 0.1] remoteExec ["A3A_fnc_sendSupport", 2];
        };
    };
};

_artillery setVariable ["detection",[_positionX,_chance]];
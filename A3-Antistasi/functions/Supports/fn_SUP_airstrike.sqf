params ["_side", "_timerIndex", "_supportPos", "_supportName"];

/*  Sets up the data for the airstrike support

    Execution on: Server

    Scope: Internal

    Params:
        _side: SIDE : The side of which the airstrike should be send
        _timerIndex: NUMBER :  The number of the support timer
        _supportPos: POSITION : The position to which the airstrike should be carried out
        _supportName: STRING : The callsign of the support

    Returns:
        The name of the target marker, empty string if not created
*/

private _fileName = "SUP_airstrike";
private _airport = [_supportPos, _side] call A3A_fnc_findAirportForAirstrike;

if(_airport == "") exitWith
{
    [2, format ["No airport found for %1 support", _supportName], _fileName] call A3A_fnc_log;
    ["", 0, 0];
};

private _targetMarker = createMarker [format ["%1_coverage", _supportName], _supportPos];
_targetMarker setMarkerShape "ELLIPSE";
_targetMarker setMarkerBrush "Grid";
_targetMarker setMarkerSize [25, 100];
if(_side == Occupants) then
{
    _targetMarker setMarkerColor colorOccupants;
};
if(_side == Invaders) then
{
    _targetMarker setMarkerColor colorInvaders;
};
_targetMarker setMarkerAlpha 0;

private _enemies = allUnits select
{
    (alive _x) &&
    {(side (group _x) != _side) && (side (group _x) != civilian) &&
    {((getPos _x) inArea _targetMarker)}}
};

if(isNil "napalmEnabled") then
{
    [1, "napalmEnabled does not containes a value, assuming false", _fileName] call A3A_fnc_log;
    napalmEnabled = false;
};

private _bombPool = if (napalmEnabled) then {["NAPALM", "CLUSTER", "HE"]} else {["CLUSTER", "HE"]};
private _bombType = "HE";

private _isTank = _enemies findIf {vehicle _x isKindOf "Tank"} != -1;

switch (true) do {
    case (_isTank): {
        _bombType = "HE";
    };
    case (_side == Invaders && {({ vehicle _x == _x } count _enemies) > 4}): {
        _bombType = selectRandom ["CLUSTER", "CHEMICAL"];
    };
    default {
        _bombType = selectRandom _bombPool;
    };
};

[2, format ["Airstrike will be carried out with bombType %1", _bombType], _fileName] call A3A_fnc_log;

private _setupTime = 1200 - ((tierWar - 1) * 110);
private _minSleepTime = (1 - (tierWar - 1) * 0.1) * _setupTime;
private _sleepTime = _minSleepTime + random (_setupTime - _minSleepTime);

private _markerDir = (getMarkerPos _airport) getDir _supportPos;
_targetMarker setMarkerDir _markerDir;

[_side, _timerIndex, _sleepTime, _bombType, _airport, _supportPos, _supportName] spawn A3A_fnc_SUP_airstrikeRoutine;

private _result = [_targetMarker, _minSleepTime, _setupTime];
_result;

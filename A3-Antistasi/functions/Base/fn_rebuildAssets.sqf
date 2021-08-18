
params ["_site", "_position"];

private _leave = false;
private _antennaDead = objNull;

if (_siteX in outposts) then {
	_antennasDead = antennasDead select {_x inArea _siteX};
	if (count _antennasDead > 0) then {
		_antennaDead = _antennasDead select 0;
	} else {
		_leave = true;
	};
};

if (_leave) exitWith {
	[
		"FAIL",
		"Rebuild Assets",
		parseText "Selected site does not have a destroyed Radio Tower or miltiary assets.",
		30
	] spawn SCRT_fnc_ui_showMessage;
};

if (isNull _antennaDead) then {
	[0, 10, _position] remoteExec ["A3A_fnc_citySupportChange",2];
    [Occupants, 10, 30] remoteExec ["A3A_fnc_addAggression",2];
    [Invaders, 10, 30] remoteExec ["A3A_fnc_addAggression",2];

	private _militaryBuildings = nearestObjects [_position, listMilBld, 500,  true];

	{
		[_x] remoteExec ["A3A_fnc_repairRuinedBuilding", 2];
	} forEach _militaryBuildings;

	destroyedSites = destroyedSites - [_site];
	publicVariable "destroyedSites";
} else {
	private _militaryBuildings = nearestObjects [_position, listMilBld, 500,  true];

	{
		[_x] remoteExec ["A3A_fnc_repairRuinedBuilding", 2];
	} forEach _militaryBuildings;

	[_antennaDead] remoteExec ["A3A_fnc_rebuildRadioTower", 2];
};

private _name = [_site] call A3A_fnc_localizar;
[
	"SUCCESS",
	"Rebuild Assets",
	parseText format ["%1 rebuilt.", _name],
	30
] spawn SCRT_fnc_ui_showMessage;

[0,-5000] remoteExec ["A3A_fnc_resourcesFIA",2];

private _filename = "fn_cargoSeats";
params ["_veh", "_sideX"];

private _isMilitia = _veh in [vehFIAArmedCar, vehFIATruck, vehFIACar, vehFIAAPC];

private _totalSeats = [_veh, true] call BIS_fnc_crewCount; // Number of total seats: crew + non-FFV cargo/passengers + FFV cargo/passengers
private _crewSeats = [_veh, false] call BIS_fnc_crewCount; // Number of crew seats only
private _cargoSeats = _totalSeats - _crewSeats;
if (_veh == vehPoliceCar) then { _cargoSeats = 4 min _cargoSeats };

if (_cargoSeats < 2) exitwith { [1, format ["Cargoseats misused for vehicle %1", _veh], _filename]; [] };

if (_cargoSeats < 4) exitWith
{
	if (_isMilitia) exitWith {if (_sideX == Occupants) then {selectRandom groupsFIASmallOcc} else {selectRandom groupsFIASmallInv}};
	if (_veh == vehPoliceCar) exitWith { [policeOfficer, policeGrunt] };
	if (_sideX == Occupants) then { 
		groupsNATOSentry call SCRT_fnc_unit_selectInfantryTier;
	} else { 
		groupsCSATSentry call SCRT_fnc_unit_selectInfantryTier;
	};
};

if (_cargoSeats < 7) exitWith			// fudge for Warrior
{
	if (_isMilitia) exitWith { if (_sideX == Occupants) then {selectRandom groupsFIAMidOcc} else {selectRandom groupsFIAMidInv}; };
	if (_veh == vehPoliceCar) exitWith { [policeOfficer, policeGrunt, policeGrunt, policeGrunt] };
	private _mid = [_sideX, "MID"] call SCRT_fnc_unit_getGroupSet;
	selectRandom _mid;
};

private _squad = call {
	if (_isMilitia) exitWith { if (_sideX == Occupants) then {selectRandom groupsFIASquadOcc} else {selectRandom groupsFIASquadInv} };
	private _squads = [_sideX, "SQUAD"] call SCRT_fnc_unit_getGroupSet;
	selectRandom _squads;
};
if (_cargoSeats == 7) then { _squad deleteAt 7 };
_squad;

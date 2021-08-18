private _positionOrigin = getMarkerPos supportMarkerOrigin;
private _flareCount = round random [4,5,7];
private _soundPool = ["A3\Sounds_F\weapons\Flare_Gun\flaregun_1.wss", "A3\Sounds_F\weapons\Flare_Gun\flaregun_2.wss"];
private _flaresPool = if(A3A_hasCup) then { 
	["CUP_F_40mm_Star_White", "CUP_F_40mm_Star_Red"] 
} else { 
	if (A3A_hasRHS) then {
		["rhsusf_40mm_white", "rhsusf_40mm_green", "rhs_mag_m662_red"]
	} else {
		["F_40mm_white", "F_40mm_Red", "F_40mm_Yellow"]
	};
};

if(!isNil "petros" && {alive petros}) then {
    petros sideChat "Starting flare barrage. ETA 30 seconds.";
};

private _timeOut = time + 30;
waitUntil {sleep 1; time > _timeOut };

private _text = format ["<t size='0.6'>Rebel mortar sends some <t size='0.6' color='#808080'>flares</t> to illuminate the battlefield near your position.</t>"];

{
    [petros, "support", _text] remoteExec ["A3A_fnc_commsMP", _x];
} forEach ([1000, _positionOrigin, teamPlayer] call SCRT_fnc_common_getNearPlayers);

for "_i" from 1 to _flareCount do {
    private _flareModel = selectRandom _flaresPool;
    private _randomizedPosition = [(_positionOrigin select 0) + random 50, (_positionOrigin select 1) + random 50, 150];

    private _flare = _flareModel createVehicle _randomizedPosition;
    _flare setVelocity [-10 + random 20, -10 + random 20, -5];

    sleep 2;
    
    playSound3D [(selectRandom _soundPool), _flare, false,  getPosASL _flare, 1.5, 1, 450, 0];

    sleep 5;
};

isSupportMarkerPlacingLocked = false;
publicVariable "isSupportMarkerPlacingLocked";
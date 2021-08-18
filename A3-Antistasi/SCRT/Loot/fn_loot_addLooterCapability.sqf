params ["_vehicle"];

if (typeOf _vehicle != civLooter) exitWith{};

[_vehicle] remoteExec ["SCRT_fnc_loot_addActionLoot", 0, _vehicle];
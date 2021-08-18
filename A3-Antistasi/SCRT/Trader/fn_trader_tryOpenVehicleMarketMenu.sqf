private _seaports = { sidesX getVariable [_x, sideUnknown] == teamPlayer } count seaports;

if(_seaports < 1) then {
    ["Black Market Is Not Available", "Rebels need to control at least one seaport to access the black market."] call A3A_fnc_customHint;
} else {
    [] call SCRT_fnc_ui_createVehicleBlackMarketMenu;
};
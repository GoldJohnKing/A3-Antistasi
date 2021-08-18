
private _fileName = "loot_createLootCrate";

private _money = player getVariable "moneyX";
private _price = [lootCrate] call A3A_fnc_vehiclePrice;

if (_money < _price) exitWith {
    ["Assign Failed", format ["You have not enough money to make loot crate. %1 € needed.", str _price]] call SCRT_fnc_misc_showDeniedActionHint;
};

vehiclePurchase_cost = _price;

private _extraMessage = format  ["Select loot crate position.<br/>Price: %1€<br/>", vehiclePurchase_cost];

[lootCrate, "CREATELOOTCRATE", _extraMessage, "Loot Crate"] call A3A_fnc_vehPlacementBegin;
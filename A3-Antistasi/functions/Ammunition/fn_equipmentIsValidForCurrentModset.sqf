params ["_configClass", "_categories"];

private _remove = false;

private _itemMod = (_configClass call A3A_fnc_getModOfConfigClass);
private _itemIsVanilla = [_itemMod] call A3A_fnc_isModNameVanilla;

//Mod is disabled, remove item.
if (_itemMod in disabledMods) exitWith {
	true;
};

//We remove anything without a picture, because it's a surprisingly good indicator if whether something
//is actually a valid item or not.
//Despite all the filtering, we still get a few RHS guns, etc that are for APCs, but are still classed the item type as normal weapons.
//This is a pretty hard filter that removes anything that shouldn't be in there - I'm hoping it isn't prone to false positives!
if (getText (_configClass >> "picture") == "") exitWith {
	true;
};

//Remove vanilla items if no vanilla sides
if (_itemIsVanilla && {A3A_hasRHS}) then {
	switch (_categories select 0) do {
		case "Item": {
			switch (_categories select 1) do {
				case "AccessoryMuzzle";
				case "AccessoryPointer";
				case "AccessorySights";
				case "AccessoryBipod";
				case "NVGoggles": {
					_remove = true;
				};
			};
		};
		case "Weapon": {
			_remove = true;
		};
		case "Equipment": {
			switch (_categories select 1) do {
				case "Headgear": {
					if (getNumber (_configClass >> "ItemInfo" >> "HitpointsProtectionInfo" >> "Head" >> "armor") > 0) then {
						_remove = true;
					};
				};
				case "Vest": {
					if (getNumber (_configClass >> "ItemInfo" >> "HitpointsProtectionInfo" >> "Chest" >> "armor") > 5) then {
						_remove = true;
					};
				};
			};
		};
	};
};

_remove;

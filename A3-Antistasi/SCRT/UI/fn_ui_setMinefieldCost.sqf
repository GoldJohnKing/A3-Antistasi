#include "\A3\Ui_f\hpp\defineResinclDesign.inc"

disableSerialization;

private _display = findDisplay 60000;

if (str (_display) == "no display") exitWith {};

private _costTextBox = _display displayCtrl 2761;
private _comboBox = _display displayCtrl 2758;
private _index = lbCurSel _comboBox;
private _minefieldType =  lbData [2758, _index];

minefieldType = _minefieldType;
private _costs = 0;
private _hr = 0;

private _pool = jna_dataList select IDC_RSCDISPLAYARSENAL_TAB_CARGOPUT;
private _quantity = 0;
private _typeM = APERSMineMag;

if (_typeX == "ATMine") then {
	_typeM = ATMineMag;
};

{
	if (_x select 0 == _typeM) exitWith {
		_quantity = _x select 1;
	};
} forEach _pool;

_costs = (2*(server getVariable (SDKExp select 0))) + ([vehSDKTruck] call A3A_fnc_vehiclePrice);
_hr = 2;
_costTextBox ctrlSetText format ["Cost: 5 %1s, %2 HR and %3€", minefieldType, _hr, _costs];

minefieldCost = [_costs, _hr, _quantity];
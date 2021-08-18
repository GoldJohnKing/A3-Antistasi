disableSerialization;

private _display = findDisplay 60000;

if (str (_display) == "no display") exitWith {};

private _costTextBox = _display displayCtrl 2751;
private _comboBox = _display displayCtrl 2750;
private _index = lbCurSel _comboBox;
private _outpostType =  lbData [2750, _index];

outpostType = _outpostType;
private _costs = 50;
private _hr = 0;

switch (outpostType) do {
    case ("WATCHPOST"): {
        _costs = 50;
        _hr = 0;
        {
            _costs = _costs + (server getVariable (_x select 0));
            _hr = _hr + 1; 
        } forEach groupsSDKSniper;
        _costTextBox ctrlSetText format ["Costs %1 HR and %2€", _hr, _costs];
    };
    case ("ROADBLOCK"): {
        _costs = 1000; //car with mg
        _hr = 1; //static gunner
        {
            _costs = _costs + (server getVariable (_x select 0));
            _hr = _hr + 1;
        } forEach groupsSDKSquad;
        _costTextBox ctrlSetText format ["Costs %1 HR and %2€", _hr, _costs];
    };
    case ("AA"): {
        _costs = 1300; //AA
        _hr = 1; //static gunner
        {
            _costs = _costs + (server getVariable (_x select 0)); 
            _hr = _hr +1;
        } forEach [SDKSL,SDKMG,SDKGL,SDKMil,SDKMil];
       _costTextBox ctrlSetText format ["Costs %1 HR and %2€", _hr, _costs];
    };
    case ("AT"): {
        _costs = 1500; //AT
        _hr = 1; //static gunner
        {
            _costs = _costs + (server getVariable (_x select 0)); 
            _hr = _hr +1;
        } forEach groupsSDKAT;
       _costTextBox ctrlSetText format ["Costs %1 HR and %2€", _hr, _costs];
    };
    default {
		[1, "Bad outpost type.", "fn_setOutpostCost"] call A3A_fnc_log;
	};
};

outpostCost = [_costs, _hr];
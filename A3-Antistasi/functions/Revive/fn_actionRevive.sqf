params ["_healed", "_healer"];

private _actionX = 0;
private _isHealed = false;
private _isPlayer = isPlayer _healer;
private _inPlayerGroup = if !(_isPlayer) then {if ({isPlayer _x} count (units group _healer) > 0) then {true} else {false}} else {false};

if (captive _healer) then {
    [_healer,false] remoteExec ["setCaptive",0,_healer];
    _healer setCaptive false;
};

if (!alive _healed) exitWith {
    if (_isPlayer) then {["Revive", format ["%1 is already dead",name _healed]] call A3A_fnc_customHint;};
    if (_inPlayerGroup) then {_healer groupChat format ["%1 is already dead", name _healed]};
    _isHealed
};

if !([_healer] call A3A_fnc_canFight) exitWith {
    if (_isPlayer) then {
        ["Revive", "You are not able to revive anyone"] call A3A_fnc_customHint;};
        _isHealed
    };

if  ((!([_healer] call A3A_fnc_isMedic && "Medikit" in (items _healer))) && {(!("FirstAidKit" in (items _healer))) && {(!("FirstAidKit" in (items _healed)))}}) exitWith{
    if (_isPlayer) then {["Revive", format ["You or %1 need a First Aid Kit or Medikit to be able to revive",name _healed]] call A3A_fnc_customHint;};
    if (_inPlayerGroup) then {_healer groupChat "I'm out of FA kits and I have no Medikit!"};
    _isHealed
};

if ((!("FirstAidKit" in (items _healer))) && !(_healer canAdd "FirstAidKit")) exitWith {
    if (_isPlayer) then {["Revive", format ["%1 has a First Aid Kit but you do not have enough space in your inventory to use it",name _healed]] call A3A_fnc_customHint;};
    if (_inPlayerGroup) then {_healer groupChat "I'm out of FA kits!"};
    _isHealed
};

if !(isNull attachedTo _healed) exitWith {
    if (_isPlayer) then {["Revive", format ["%1 is being carried or transported and you cannot heal him",name _healed]] call A3A_fnc_customHint;};
    if (_inPlayerGroup) then {_healer groupChat format ["%1 is being carried or transported and I cannot heal him",name _healed]};
    _isHealed
};

if !(_healed getVariable ["incapacitated",false]) exitWith {
    if (_isPlayer) then {["Revive", format ["%1 no longer needs your help",name _healed]] call A3A_fnc_customHint;};
    if (_inPlayerGroup) then {_healer groupChat format ["%1 no longer needs my help",name _healed]};
    _isHealed
};

if (_isPlayer) then {
    _healed setVariable ["helped",_healer,true];
};
_healer setVariable ["helping",true];
if  ((!("FirstAidKit" in (items _healer))) && {!("Medikit" in (items _healer))}) then {
    _healer addItem "FirstAidKit";
    _healed removeItem "FirstAidKit";
};


private _timer = if ([_healer] call A3A_fnc_isMedic) then { time + 8 }else { time + 14 };

_healer setVariable ["timeToHeal",_timer];
_healer playMoveNow selectRandom medicAnims;
_healer setVariable ["animsDone",false];
_healer setVariable ["cured",_healed];
_healer setVariable ["success",false];
_healer setVariable ["cancelRevive",false];
if (!_isPlayer) then {
    {_healer disableAI _x} forEach ["ANIM","AUTOTARGET","FSM","MOVE","TARGET"];
} else {
    _actionX = _healer addAction ["Cancel Revive", {(_this select 1) setVariable ["cancelRevive",true]},nil,6,true,true,"","(_this getVariable [""helping"",false]) && (isPlayer _this)"];

    if (isPlayer _healed) then {
		[["UpdateState", format ["Treats %1", (name _healed)]]] call SCRT_fnc_misc_updateRichPresence;
    };
};

_healer addEventHandler ["AnimDone", {
    private _healer = _this select 0;
    private _healed = _healer getVariable ["cured",objNull];
    if (([_healer] call A3A_fnc_canFight) 
        && (time <= (_healer getVariable ["timeToHeal",time])) 
        && !(_healer getVariable ["cancelRevive",false]) 
        && (alive _healed) 
        && (_healed getVariable ["incapacitated",false]) 
        && (_healer == vehicle _healer)) then {
        _healer playMoveNow selectRandom medicAnims;
    }
    else {
        _healer removeEventHandler ["AnimDone",_thisEventHandler];
        _healer setVariable ["animsDone",true];
        if (([_healer] call A3A_fnc_canFight) && !(_healer getVariable ["cancelRevive",false]) && (_healer == vehicle _healer) && (alive _healed)) then
        {
            if (_healed getVariable ["incapacitated",false]) then
            {
                _healer setVariable ["success",true];
                if ([_healer] call A3A_fnc_isMedic) then {_healed setDamage 0.25} else {_healed setDamage 0.5};
                if(!("Medikit" in (items _healer))) then
                {
                    _healer removeItem "FirstAidKit";
                };
            };
        };
    };
}];

waitUntil {sleep 0.5; (_healer getVariable ["animsDone",true])};
_healer setVariable ["animsDone",nil];
_healer setVariable ["timeToHeal",nil];
_healer setVariable ["cured",nil];
_healer setVariable ["helping",false];
if (!_isPlayer) then {
    {_healer enableAI _x} forEach ["ANIM","AUTOTARGET","FSM","MOVE","TARGET"];
}
else {
    _healer removeAction _actionX;
    _healed setVariable ["helped",objNull,true];
    _healer setVariable ["helping",false];

    [] call SCRT_fnc_misc_updateRichPresence;
};

if (_healer getVariable ["cancelRevive",false]) exitWith {
    if (_isPlayer) then {
        ["Revive", "Revive cancelled"] call A3A_fnc_customHint;
        _healer setVariable ["cancelRevive",nil];
    };
    _isHealed
};


if !(alive _healed) exitWith {
    if (_isPlayer) then {
        ["Revive", format ["We lost %1",name _healed]] call A3A_fnc_customHint;
    };
    if (_inPlayerGroup) then {_healer groupChat format ["We lost %1",name _healed]};
    
    _isHealed
};

if (!([_healer] call A3A_fnc_canFight) || {(_healer != vehicle _healer) || {(_healer distance _healed > 3)}}) exitWith {
    if (_isPlayer) then {
        ["Revive", "Revive cancelled"] call A3A_fnc_customHint;
    };

    _isHealed
};

if (_healer getVariable ["success",true]) then {
    private _sideX = side (group _healed);
    if ((_sideX != side (group _healer)) && ((_sideX == Occupants) || (_sideX == Invaders))) then
        {
        _healed setVariable ["surrendering",true,true];
        sleep 2;
        };
    _healed setVariable ["incapacitated",false,true];
    _isHealed = true;
} else {
    if (_isPlayer) then {["Revive", "Revive unsuccesful"] call A3A_fnc_customHint;};
    if (_inPlayerGroup) then {_healer groupChat "Revive failed"};
};

_isHealed
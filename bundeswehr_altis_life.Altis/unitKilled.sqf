/*
	File: unitKilled.sqf
	Author: Tom Witkowski (Gummibeer)
	URI: https://github.com/Gummibeer
*/

// TODO prüfen ob im Multiplayer bloß der Killer Geld bekommt
// TODO Killassist belohnen - EventHandler Hit
// TODO Fahrer bei Gunner Mord belohnen

private[ "_death", "_deathType", "_deathSide", "_deathIsCivilian", "_killer", "_killerIsPlayable", "_killerIsPlayer", "_killerType", "_killerVehicle", "_killerVehicleType", "_killerVehicleIsVehicle", "_killerDriver", "_killerDriverType", "_killerIsDriver", "_text" ];

_death = _this select 0;
_deathType = typeOf _death;
_deathSide = toArray _deathType;
_deathSide resize 2;
_deathIsCivilian = true;
if(toString _deathSide == "O_") then {
	_deathIsCivilian = false;
};

_killer = _this select 1;

// TODO natürlich sterbende nicht berechnen
// sollte hier gelöst werden
_killerIsPlayable = isPlayer _killer;
_killerIsPlayer = if(_killer == player) then {true} else {false};

_killerType = typeOf _killer;
_killerVehicle = vehicle _killer;
_killerVehicleType = typeOf _killerVehicle;
_killerVehicleIsVehicle = if((_killerVehicle isKindOf "landVehicle") OR (_killerVehicle isKindOf "Ship") OR (_killerVehicle isKindOf "Air")) then {true} else {false};;
_killerDriver = driver _killerVehicle;
_killerDriverType = typeOf _killerDriver;
_killerIsDriver = if(_killerVehicleIsVehicle AND (_killer == _killerDriver)) then {true} else {false};

if(_killerIsPlayable and _killerIsPlayer) then {
    if(_deathIsCivilian) then {
    	_text = "<t size='2' color='#ff0000'>Ermahnung</t><br/><t size='1.5'>Zivilistenmord</t><br/><t size='1'>- 200 €</t>";
    	hint parseText format ["%1", _text];
    	life_cash = life_cash - 200;
    } else {
        if(_killerIsDriver)exitWith{};
    	_text = "<t size='2' color='#00ff00'>Erfolgreich</t><br/><t size='1.5'>Rebell ausgeschaltet</t><br/><t size='1'>+ 100 €</t>";
    	hint parseText format ["%1", _text];
    	life_cash = life_cash + 100
    };
};
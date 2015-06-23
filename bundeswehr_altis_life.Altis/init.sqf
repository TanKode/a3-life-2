/*
	File: init.sqf
	Author: Tom Witkowski (Gummibeer)
	URI: https://github.com/Gummibeer
*/

private[ "_skillLevel", "_enemySide", "_enemyMen", "_enemyVehicles", "_enemyMenDensities", "_enemyVehicleDensities", "_civPopulations", "_types", "_markers", "_name", "_sizeArray", "_sizeA", "_sizeB", "_size", "_position", "_type", "_enemyMenDensity", "_enemyVehicle", "_enemyVehicleDensity", "_civPopulation", "_marker", "_text" ];

_skillLevel = 1;
_enemySide = 2;
_enemyMen = [true,false];
_enemyVehicles = [
	[true,true,true],
	[true,false,false],
	[false,false,false],
	[false,false,false],
	[true,false,true]
];
_enemyMenDensities = [
	[30,15],
	[25,12],
	[20,10],
	[10,5],
	[20,10]
];
_enemyVehicleDensities = [
	[4,3],
	[3,2],
	0,
	0,
	[2,1]
];
_civPopulations = [
	[20,10],
	[15,5],
	[10,0]
];
_types = [
	"Stadt",
	"Kleinstadt",
	"Dorf",
	"Basis",
	"Hauptquartier"
];
_markers = [
	// Städte
	["opfor_kavala", 0],
	["opfor_pyrgos", 0],
	["opfor_athira", 0],
	["opfor_sofia", 0],
	
	// Kleinstädte
	["opfor_neochori", 1],
	["opfor_charkia", 1],
	
	// Basen
	["opfor_pyrgos_base", 3]
];

{
	_name = format ["%1", _x select 0];
	_sizeArray = getMarkerSize _name;
	_sizeA = _sizeArray select 0;
	_sizeB = _sizeArray select 1;
	_size = (_sizeA + _sizeB) / 2;
	_position = getMarkerPos _name;
	_type = _x select 1;
	_enemyMenDensity = _enemyMenDensities select _type;
	_enemyVehicle = _enemyVehicles select _type;
	_enemyVehicleDensity = _enemyVehicleDensities select _type;
	
	null = [_name, _enemySide, _size, _enemyMen, _enemyVehicle, false, _enemyMenDensity, _enemyVehicleDensity, _skillLevel] execVM "LV\militarize.sqf";
	if(_type < 3) then {
		_civPopulation = _civPopulations select _type;
		_marker = createMarker [_name + "_marker", _position];
		_marker setMarkerType "flag_CSAT";
		_text = _types select _type;
		_marker setMarkerText _text;
		null = [_marker, 0, _size, [true,false], [true,false,false], false, _civPopulation, [3,2], 1] execVM "LV\militarize.sqf";
	};
} forEach _markers;
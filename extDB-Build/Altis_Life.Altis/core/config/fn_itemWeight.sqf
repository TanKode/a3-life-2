/*
	File: fn_itemWeight.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gets the items weight and returns it.
*/
private["_item"];
_item = [_this,0,"",[""]] call BIS_fnc_param;
if(_item == "") exitWith {};

switch (_item) do
{
	case "oilu": {15};
	case "oilp": {1};
	case "heroinu": {15};
	case "heroinp": {1};
	case "cannabis": {15};
	case "marijuana": {1};
	case "apple": {10};
	case "peach": {10};
	case "water": {1};
	case "rabbit": {1};
	case "salema": {5};
	case "ornate": {5};
	case "mackerel": {5};
	case "tuna": {5};
	case "mullet": {5};
	case "catshark": {5};
	case "turtle": {5};
	case "fishing": {5};
	case "turtlesoup": {5};
	case "donuts": {1};
	case "coffee": {1};
	case "fuelE": {2};
	case "fuelF": {5};
	case "money": {0};
	case "pickaxe": {2};
	case "copperore": {15};
	case "ironore": {15};
	case "copper_r": {1};
	case "iron_r": {1};
	case "sand": {10};
	case "salt": {10};
	case "salt_r": {1};
	case "glass": {1};
	case "diamond": {7};
	case "diamondc": {1};
	case "cocaine": {15};
	case "cocainep": {1};
	case "spikeStrip": {15};
	case "rock": {10};
	case "cement": {1};
	case "goldbar": {20};
	case "blastingcharge": {15};
	case "boltcutter": {5};
	case "defusekit": {2};
	case "storagesmall": {5};
	case "storagebig": {10};
	default {1};
};

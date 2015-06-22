/*
	File: fn_welcome.sqf
	Author: Sahrani-Life
	Description:
	Welcome Messages after player connected
*/
[] spawn {
    sleep 5;
    [
    	[
    		["Willkommen ","align = 'center' shadow = '1' size = '0.5' font='PuristaBold'","#38701E"],
    		["auf dem Life Server ","align = 'center' shadow = '1' size = '0.5'","#FFFFFF"],
    		["Unnamed Life "," align = 'center' shadow = '1' size = '0.5'","#38701E"]
    	]
    ] spawn BIS_fnc_typeText2;
    sleep 10;
    [
    	[
    		["Komm doch auf unser Teamspeak: ","align = 'center' shadow = '1' size = '0.5' font='PuristaBold'","#FFFFFF"],
    		["wurst ","align = 'center' shadow = '1' size = '0.5'","#38701E"],
    		[" "," align = 'center' shadow = '1' size = '0.5'","#FFFFFF"]
    	]
    ] spawn BIS_fnc_typeText2;
    sleep 10;
    [
    	[
    		["Oder besuch unsere Homepage: ","align = 'center' shadow = '1' size = '0.5' font='PuristaBold'","#FFFFFF"],
    		["wurst ","align = 'center' shadow = '1' size = '0.5'","#38701E"],
    		[" "," align = 'center' shadow = '1' size = '0.5'","#FFFFFF"]
    	]
    ] spawn BIS_fnc_typeText2;
    sleep 10;
    [
    	[
    		["Beachte immer die Regeln! ","align = 'center' shadow = '1' size = '0.5' font='PuristaBold'","#FFFFFF"],
    		["Diese findest du auf unserer Webseite ","align = 'center' shadow = '1' size = '0.5'","#38701E"],
    		[" "," align = 'center' shadow = '1' size = '0.5'","#FFFFFF"]
    	]
    ] spawn BIS_fnc_typeText2;
    sleep 10;
    [
    	[
    		["Viel Spaß ","align = 'center' shadow = '1' size = '0.5' font='PuristaBold'","#38701E"],
    		["wünschen dir die ","align = 'center' shadow = '1' size = '0.5'","#FFFFFF"],
    		["Admins von Unnamed Life  "," align = 'center' shadow = '1' size = '0.5'","#38701E"]
    	]
    ] spawn BIS_fnc_typeText2;
};
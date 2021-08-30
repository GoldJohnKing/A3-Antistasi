/*
 * The reason for this split, is we can't open dialog boxes during initServer in singleplayer.
 * This is an issue if we want to get params data before initialising the server.

 * So if it's singleplayer, we wait for initServer.sqf to finish (and the player to be spawned in), then get params, then load.
 */
if (isNil "logLevel") then {LogLevel = 2};
if (isNil "isSystemChatPostingAllowed") then {isSystemChatPostingAllowed = false};

// removing post-apocalyptic stuff
private _forbiddenTerrainObjects = [ 
    "tavi", 
    "heracleum", 
    "zil", 
    "heli", 
    "bus", 
    "dead", 
    "junkpile", 
    "ruin", 
    "zaporozec", 
    "moskvic", 
    "tahac", 
    "prives", 
    "buchanka", 
    "cisterna", 
    "bagbunker", 
    "t34", 
    "mrtvol", 
    "tram", 
    "tavi_p_carduus", 
    "tavi_fort_barricade", 
    "vetrak1", 
    "rampart", 
    "brdm2_wrecked", 
    "misc_rubble_ep1", 
    "skodovka_wrecked",
	"garb", 
    "wreck", 
    "heap", 
    "ural",
    "paleta",
    "uaz",
    "bmp2",
    "t72",
    "brdm",
    "fort",
    "jezek",
    "junk",
    "kamaz_hasic",
    "hilux",
    "bags",
    "sack",
    "garbage",
    "garbage_paleta"
]; 
 
private _allTerrainObjects = (nearestTerrainObjects [[worldSize/2, worldSize/2], ["HIDE"], worldSize,false]) select {
    private _terrainObjectName = toLower(str _x);
    (_forbiddenTerrainObjects findIf {_x in _terrainObjectName} != -1) && {(isOnRoad _x || "dead" in _terrainObjectName || "tram" in _terrainObjectName)}
}; 

{
    hideObjectGlobal _x; 
    _x enableSimulationGlobal false;
} forEach _allTerrainObjects;

[] call A3A_fnc_initServer;
/*
 * The reason for this split, is we can't open dialog boxes during initServer in singleplayer.
 * This is an issue if we want to get params data before initialising the server.

 * So if it's singleplayer, we wait for initServer.sqf to finish (and the player to be spawned in), then get params, then load.
 */
if (isNil "logLevel") then {LogLevel = 2};

[] call A3A_fnc_initServer;

// Edited: Server autosave and restart every 6 hours
[{"[公告]服务器将于5分钟后自动存档并重启!" remoteExecCall ["CBA_fnc_notify", -2];}, [], 21300] call CBA_fnc_waitAndExecute; // Restart Hint: -180s
[{"[公告]服务器将于60秒后自动存档并重启!" remoteExecCall ["CBA_fnc_notify", -2];}, [], 21540] call CBA_fnc_waitAndExecute; // Restart Hint: -60s
[{[] remoteExecCall ["A3A_fnc_saveLoop", 2];}, [], 21570] call CBA_fnc_waitAndExecute; // Autosave
[{"btc_password" serverCommand "#restart";}, [], 21600] call CBA_fnc_waitAndExecute; // Restart

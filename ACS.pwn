/*
  __      _      __           _     _ 
 | _|    / \    |_ |  _ __   | |_  (_)
 | |    / _ \    | | | '_ \  | __| | |
 | |   / ___ \   | | | | | | | |_  | |
 | |  /_/   \_\  | | |_| |_|  \__| |_|
 |__|           |__|                  
   __    ____   __                
 | _|  / ___| |_ |   __ _   _ __ 
 | |  | |      | |  / _` | | '__|
 | |  | |___   | | | (_| | | |   
 | |   \____|  | |  \__,_| |_|   
 |__|         |__|               
   __   ____    __   _                       _                 
 | _| / ___|  |_ | | |__     ___     ___   | |_    ___   _ __ 
 | |  \___ \   | | | '_ \   / _ \   / _ \  | __|  / _ \ | '__|
 | |   ___) |  | | | | | | | (_) | | (_) | | |_  |  __/ | |   
 | |  |____/   | | |_| |_|  \___/   \___/   \__|  \___| |_|   
 |__|         |__|                                            
   _                 ____    _                 
 | |__    _   _    / ___|  (_)  _ __     __ _ 
 | '_ \  | | | |   \___ \  | | | '_ \   / _` |
 | |_) | | |_| |    ___) | | | | | | | | (_| |
 |_.__/   \__, |   |____/  |_| |_| |_|  \__,_|
          |___/                               
*/
/* ----------------[Includes]---------------- */
#include <a_samp>
/* ----------------[Defines]---------------- */
new VehCounter[MAX_PLAYERS];
new ZeroTimer[MAX_PLAYERS];
new ACSTimer[MAX_PLAYERS];
forward SetZero(playerid);
forward CheckCounts(playerid);
/* ----------------[Publics]---------------- */
public OnFilterScriptInit()
{
    print("ACS v0.1 filterscript loaded");
    print("Github: https://github.com/realSina/");
    print("Author: Sina");
    return 1;
}
public OnPlayerConnect(playerid)
{
	VehCounter[playerid] = 0;
	ZeroTimer[playerid] = SetTimerEx("SetZero", 1000, true, "i", playerid);
	ACSTimer[playerid] = SetTimerEx("CheckCounts", 100, true, "i", playerid);
	return 1;
}
public OnPlayerDisconnect(playerid, reason)
{
	KillTimer(ZeroTimer[playerid]);
	KillTimer(ACSTimer[playerid]);
	return 1;
}
public OnFilterScriptExit()
{
    return 1;
}
public OnPlayerStateChange(playerid, newstate, oldstate)
{
	if(newstate == PLAYER_STATE_DRIVER)
	{
	    VehCounter[playerid] ++;
	}
	return 1;
}
/* ----------------[Timers]---------------- */
public SetZero(playerid)
{
VehCounter[playerid] = 0;
return 1;
}
public CheckCounts(playerid)
{
if(VehCounter[playerid] >= 3)
{
CallRemoteFunction("OnACSDetected", "i", playerid);
}
return 1;
}

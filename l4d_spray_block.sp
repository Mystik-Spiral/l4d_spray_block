/*

Blocks client sprays.
It is suggested to also set the following in the server.cfg file:

sm_cvar sv_allowupload 0
sm_cvar sv_allowdownload 0

Want to contribute code enhancements?
Create a pull request using this GitHub repository: https://github.com/Mystik-Spiral/l4d_spray_block

Plugin discussion: https://forums.alliedmods.net/showthread.php?t=TBDxx

*/

#include <sourcemod>
#include <sdktools_tempents>

#pragma semicolon 1
#pragma newdecls required

#define PLUGIN_VERSION "1.0"

public Plugin myinfo = 
{
	name = "[L4D & L4D2] Spray Block",
	description = "Blocks client sprays",
	author = "Mystik Spiral",
	version = PLUGIN_VERSION,
	url = "https://forums.alliedmods.net/showthread.php?t=TBDxx"
}
 
public void OnPluginStart()
{
	CreateConVar("sprayblock_version", PLUGIN_VERSION, "Blocks client sprays", FCVAR_NOTIFY|FCVAR_DONTRECORD);
	AddTempEntHook("Player Decal", SprayBlock);
}
 
public Action SprayBlock(const char[] name, const int[] Players, int numClients, float delay)
{
	return Plugin_Stop;
}

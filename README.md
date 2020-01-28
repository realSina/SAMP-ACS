# SAMP-ACS

Credit:
*********************************************
Made by: Sina
** Didn't copied from anywhere!
** It takes my time about 30 minutes to debug and write this!
Instagram ID: http://instagram.com/the_sina.x
Telegram ID: http://t.me/ItsNull
GitHub: https://github.com/realSina/
*********************************************
Hope you like this ;)


# What's this project?
Actually it's a anti car shooter.
It will help you to prevent cheaters from shooting cars or teleport hacks between vehicles.
* It won't work 100% *
It just check if somebody entered in +3 vehicles in 1 second,
So if a cheater shoot a car in a second, it won't detect that by the way you can edit timers and veh counters in specific seconds.


# Instructions:
1_ Copy and paste ACS.pwn and ACS.amx in your SAMP Server Directory/filterscripts/
2_ Add a public in your gamemode called OnACSDetected(playerid) for example:
...............................
public OnACSDetected(playerid)
{
new cheater[50];
format(cheater, sizeof(cheater), "Player %s is car shooting");
SendClientMessageToAll(-1, cheater);
return 1;
}
...............................
3_ Done

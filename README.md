# SAMP-ACS

Credit:
*********************************************
Made by: Sina

** Didn't copy from anywhere!

** It took my time about 30 minutes to write!

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

2_ Add a callback in your gamemode called OnACSDetected(playerid) for example:

...............................

public OnACSDetected(playerid)

{

new cheater[50];

new name[25];

GetPlayerName(playerid, name, sizeof(name));

format(cheater, sizeof(cheater), "Player %s is car shooting", name);

SendClientMessageToAll(-1, cheater);

return 1;

}

...............................

3_ Done

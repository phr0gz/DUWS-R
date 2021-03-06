Disclaimer:
The team is not responsible if this mission destroys your computer, or if a ninja kills you with karate while doing a back flip
while you are playing this mission. A big shout-out goes to the original DUWS for the great starting point! This project was
forked from the work provided at http://forums.bistudio.com/showthread.php?160117-SP-Dynamic-Universal-War-System-(DUWS-alpha0-1)

OVERVIEW:
The DUWS-R randomly generates a campaign with enemy zones to capture.
Or you can also choose to manually place your HQ and enemy and make your own unique campaign.
The key of the mission is to have maximum replay-ability, where the player can setup his own campaign or let the DUWS create everything randomly for him.
You can play with the DUWS-R on any island you want, you just have to rename the .pbo file.

QUICKSTART:
Put the .pbo inside your "Steam\SteamApps\common\Arma 3\Missions" and/or "Steam\SteamApps\common\Arma 3\MPMissions" folder.
When you are asked to choose the campaign settings, just use the default parameters and click "Start".

/////////////////////////////////////////////////
How to export the mission to another island?////
/////////////////////////////////////////////////
Just rename the .pbo to the extension of the other island
Example: DWS.stratis.pbo >> DWS.chernarus.pbo
That's it!

N.B.: This mission will have a harder time generating stuff if a lot of the terrain of the island is sloped, meaning that valid locations will
be harder/take longer to find. (side missions, mission init.) Most terrains are fine, but on islands like diaoyu, it will be very hard to play.

//////////////////////////////////////////////////////
How to manually place the HQ and enemy zones?////
//////////////////////////////////////////////////////
See inside the init.sqf more info


FEATURES:
*Play the way you want:
	-Play as a lone wolf or as a SF team, using support assets and gadgets and perform side missions
	-Control your personal squad of troopers and fight against the OPFOR
	-Control several squads, vehicles and supports and try to retake the island from the enemy (not yet implemented, since I'm 		waiting for High Command module to be released(I hope))
	-...or a mix of all of them
*Pretty much every location is randomly generated on the map, from the HQ to enemy zones and side missions.
*Random side missions, with randomly generated names
*Play the DUWS-R on any island you want to.
*VAS by Tonic (Armory)
*Several support options to unlock (UAV, Arty, Personal FLIR, VAS, ...)
*You can define by yourself the HQ, the enemy zones, or just the HQ and let the DUWS-R generate the zones automatically. You can also let the DUWS-R create everything by itself. Basically you decide the level of randomization.

REQUIRED ADDONS:
None, you can play ArmA III vanilla or use all the addons you want: islands, weapons, gear.
Note that the DUWS will not show addons that adds BLUFOR units/vehicle, since they are added by hand.
However, addons that add OPFOR vehicles will be used, since OPFOR vehicles are taken directly from the cfgVehicles classes.

TODO:
*Persistent player stats throughout the campaigns, allowing the player to play a multi island driven campaign
*Find something useful to do with Army Power (suggestions are very welcome)
*Add side missions to the mission pool (actually only 5 are present)
*A lot of stuff

Known issues:
-During the first few minutes of the campaign, you may get an error message popping with something like "'access/' is not a vehicle class", disregard that.
-Generating a side mission may take up to a few minutes on stratis, that's because the island has a lot of slopes.

COPYRIGHT:
You are free to release any modded/modified version of the DUWS-R, as long as you put a link pointing to the original DUWS-R.

CREDITS:
Mission made by kibot.
VAS script and TAW view distance by Tonic.
Thanks to Kempco for the map size script.
Thanks to FrankHH for correcting the typos.
Thanks to FunkDooBiesT for his help and his time.
Thanks to WolfFlight[TZW] and Amarak[TZW] for their help.
Thanks to Aeroson for repetitive clean up and SET/GET loadout scripts.
Thanks to timsk.
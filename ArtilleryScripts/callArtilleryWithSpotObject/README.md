# Call artillery with spotObject
Originally I found this script from White Raven's Youtube channel. Here is the video link: https://www.youtube.com/watch?app=desktop&v=LmuC0ur1NyY

## Setup
* You need one or more artillery unit(s) be it mortar, SPG or MLRS units with the variable name of your choice.
* Trigger with radio activation.
* Trigger's onActivation script added to it and change the variables in the array to match your artillery units.
* Change the salvo lenght in the callArtillery.sqf to your liking, I had 30 as that was the max ammunition of my artillery unit (CUP mod MLRS RM70 CUP_B_RM70_CZ)

## Procedure
* Spot the wanted object with spotObject action.
* Call Radio defined in the trigger (mine was Alpha).
* Watch and enjoy the bombardment.

## Things I changed to work with my setup that used spotObject script to set the position for the strike
* In the callArtillery.sqf:
  * _trg = getPosATL latestSpot;
  * variable names to be _artillery (1, 2, 3...) from _mortar, though I would use _mortar too if the support unit would be mortar instead of SPG or MLRS.

* In the spotObject script:
  * Added variable latestSpot that would save the last spotted object through the spotObject script. There is more info at the spotObject script's folder.
## Notable info
It seems like the artillery unit won't fire out of range even without the original script's "if" statement that checked that the artillery is indeed in range.
I've used "doArtilleryFire" command without checking the range and the mortar shot across the map. Maybe there is a difference in the function logic between these functions.

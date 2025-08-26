# CallArtilleryWithSpotObject
Originally I found this script from White Raven's Youtube channel. Here is the video link: https://www.youtube.com/watch?app=desktop&v=LmuC0ur1NyY

## Things I changed to work with my setup that used spotObject script to set the position for the strike
* In the callArtillery.sqf:
  * _trg = getPosATL latestSpot;
  * variable names to be _artillery (1, 2, 3...) from _mortar, though I would use _mortar too if the support unit would be mortar instead of SPG or MLRS.

* In the spotObject script:
  * Added variable latestSpot that would save the last spotted object through the spotObject script. There is more info at the spotObject script's folder.

# callArtilleryOnPlayerWhoShoots
This script is executed via EventHandler FiredMan that is attached to the player's unit.

## How to use this script
* Enemy group that is using the mortar to be named in the script.
* the ammo needs to be the exact one that the mortar uses. This could probably be fetched with "getArtilleryAmmo" instead of using config to see what your artillery unit uses.
* Confirm the shooting range of your artillery unit and match it in the code where it checks if player is inside the range.

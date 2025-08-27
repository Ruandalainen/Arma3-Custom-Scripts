# showEnemyTeamLeadersWithinRadius
This script makes new markers to map where the enemy groups' leader was at the moment the script was executed. The script creates markers on every leader's position and it is a bad way of doing this. It worked for me though. 

After the markers are made, another block of code runs that sets the alpha of markers to 1 which are in the area of the trigger used to hold the script.

## Potential upgrade
I would try to minimize the number of markers made by only creating the markers within the radius. This could be achieved checking if the group's leader is in range.

## Use case
I had a scenario where the player needs to go to the extraction point through set of points the player knew from the task menu. In the scenario there were laptops on top of a crate in the first floor of transmitter towers. You could use the laptop object's hold action to activate the trigger to give you intel.  

_artillery = _this select 0;

_ammo = getArtilleryAmmo [_artillery] select 0;

while {true} do {
	_trgPos = getPosATL latestSpot;
	_artillery commandArtilleryFire [_trgPos, _ammo, 30];

	artyCalled = true;
	terminate callArtillery;
};

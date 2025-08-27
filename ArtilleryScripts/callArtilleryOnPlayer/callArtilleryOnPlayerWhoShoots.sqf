pos = position player;
_mortarmans = units mortars1 + units mortars2 + units mortars3 + units mortars4 + units mortars5 + units mortars6 + units mortars7 + units mortar8;

{
_x enableAI "ALL";
} forEach _mortarmans;

null = [] spawn {

  _mortarmans = units mortars1 + units mortars2 + units mortars3 + units mortars4 + units mortars5 + units mortars6 + units mortars7 + units mortars8;
  sleep 5;
  
  {
    _dist = player distance _x;
    _rand = random 50;
    if (_rand < 1) then {
      if (_dist < 556) then {
        _x doArtilleryFire [pos, "rhs_mag_3vo18_10", 2];
      };
    };
  } forEach _mortarmans;
};

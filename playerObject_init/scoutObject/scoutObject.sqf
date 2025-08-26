// ADDS SCROLL WHEEL MENU ACTION THAT LET'S PLAYER TO "SCOUT" OBJECT UNDER CURSOR (MIDDLE OF THE SCREEN). USES "cursorObject" AND "if" STATEMENTS.

// REQUIREMENTS TO GET THIS SCRIPT TO WORK AT IT'S CURRENT STATE IS LOOKING THROUGH BINOCULARS (SPECIFICALLY THE OBJECT NAMED "Binocular") AND HAVING PLAYER OBJECT VARIABLE NAME "me" OR CHANGED ACCORDINGLY IN THE SCRIPT.

this addAction [
    "Spot", 
    {
        _side = side cursorObject;
        if (str _side == "UNKNOWN") then {} else {
            _params = getCursorObjectParams;
            _object = _params select 0;
            _dist = player distance _object;
            _params set [2, _dist];

            if (_object isKindOf 'Man') then {
            _0 = 'Human';
            _params set [0, _0]; 
            };
            if (_object isKindOf 'Tank_F') then {
            _0 = 'Tank';
            _params set [0, _0]; 
            };

            if (_object isKindOf 'Air') then {
            _0 = 'Aircraft';
            _params set [0, _0]; 
            };

            if (_object isKindOf 'Ship_F') then {
            _0 = 'Ship';
            _params set [0, _0]; 
            };

            if (_object isKindOf 'StaticWeapon') then {
            _0 = 'Static weapon system';
            _params set [0, _0]; 
            };

            if (_object isKindOf 'Car_F') then {
            _0 = 'Car';
            _params set [0, _0];

                if (_object isKindOf 'Wheeled_APC_F') then {
                _0 = 'Wheeled APC';
                _params set [0, _0]; 
                };

                if (_object isKindOf 'Truck_F') then {
                _0 = 'Truck';
                _params set [0, _0]; 
                };
            };

            _type = _params select 0;
            if (str _type == "<NULL-Object>") then {} else {
                titleText [_type + ", Distance: " + str _dist + ", Side: " + str _side, "PLAIN DOWN", 0.3]; // YOU CAN TAKE THE DISTANCE OFF THE "titleText" BY REMOVING "", Distance: " + str _dist +"
            };
        };
    },
    nil,
    10,
    true,
    true,
    "",
    "cameraView == 'GUNNER' && currentWeapon me == 'Binocular' || cameraView == 'GROUP'" // "me" IS THE PLAYER OBJECTS VARIABLE NAME AND NEEDS TO BE CHANGED ACCORDINGLY
];

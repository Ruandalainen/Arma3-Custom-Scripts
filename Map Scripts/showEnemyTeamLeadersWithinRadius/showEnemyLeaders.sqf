{
  _leader = leader _x;
  if (alive _leader) then{
    private _markerName = format ["unit_marker_%1", _forEachIndex]; 
    private _marker = createMarker [_markerName, getPos _leader]; 
    _marker setMarkerType "mil_unknown"; 
    _marker setMarkerColor "ColorRed";
    _marker setMarkerAlpha 0; 
  };
} forEach groups east;

_markers = allMapMarkers;


{
dist = (getMarkerPos _x) distance (getpos thisTrigger);
getTriggerDistances = triggerArea thisTrigger;
distTrigger = getTriggerDistances select 0;
if (dist < distTrigger) then { 
  _x setMarkerAlpha 1; 
}; 
} forEach _markers;

null = [] spawn {
  _markers = allMapMarkers;
  sleep 45;
  { 
    _x setMarkerAlpha 0.3; 
  } forEach _markers;
  
  sleep 45;
  
  {
    deleteMarker _x;
  } forEach _markers;
};

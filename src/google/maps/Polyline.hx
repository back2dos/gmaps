package google.maps;

import haxe.Constraints;
import haxe.extern.*;
import google.maps.LatLng;

extern class Polyline extends MVCObject {
	function new(?options:PolylineOptions);
	function setMap(map:google.maps.Map):Void;
}
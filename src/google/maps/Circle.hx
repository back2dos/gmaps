package google.maps;

import haxe.Constraints;
import haxe.extern.*;
import google.maps.LatLng;

extern class Circle extends MVCObject {
	function new(?options:CircleOptions);
	function setMap(map:google.maps.Map):Void;
}
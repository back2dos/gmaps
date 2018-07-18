package google.maps;

import haxe.Constraints;
import haxe.extern.*;
import google.maps.LatLng;

extern class Rectangle extends MVCObject {
	function new(?options:RectangleOptions);
	function setMap(map:google.maps.Map):Void;
}
package google.maps.drawing;

import haxe.Constraints;

extern class DrawingManager extends MVCObject {
	function new(options:{});
	function setMap(map:google.maps.Map):Void;
}
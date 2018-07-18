package google.maps.drawing;

import haxe.Constraints;

extern class DrawingManager extends MVCObject {
	function new(?options:{});
	function getDrawingMode():OverlayType;
	function getMap():google.maps.Map;
	
	function setDrawingMode(v:OverlayType):Void;
	function setMap(map:google.maps.Map):Void;
	function setOptions(options:{}):Void;
	
}
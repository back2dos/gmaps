package google.maps.drawing;

@:enum @:native('google.maps.drawing.OverlayType')
extern abstract OverlayType(String) {
	var POLYGON;
	var CIRCLE;
	var MARKER;
	var POLYLINE;
	var RECTANGLE;
}
package google.maps;

extern class OverlayView extends MVCObject {
	function new();
	
	function draw():Void;
	
	function onAdd():Void;
	function onRemove():Void;
	
	function setMap(map:Map):Void;
	
	function getMap():Map;
	function getPanes():MapPanes;
	function getProjection():MapCanvasProjection;
}
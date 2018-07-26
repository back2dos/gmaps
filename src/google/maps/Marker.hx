package google.maps;

import haxe.Constraints;
import haxe.extern.*;
import google.maps.LatLng;

extern class Marker extends MVCObject {
	function new(?options:MarkerOptions);
	
	function setAnimation(v:String):Void;
	function setClickable(v:Bool):Void;
	function setCursor(v:String):Void;
	function setDraggable(v:Bool):Void;
	function setIcon(v:String):Void;
	function setLabel(v:String):Void;
	function setOpacity(v:Float):Void;
	function setPosition(latlng:EitherType<LatLng, LatLngLiteral>):Void;
	function setShape(v:MarkerShape):Void;
	function setTitle(v:String):Void;
	function setVisible(v:Bool):Void;
	function setZIndex(v:Int):Void;
	function setMap(map:Map):Void;
	
	
	function getPosition():LatLng;
	function getMap():Map;
}
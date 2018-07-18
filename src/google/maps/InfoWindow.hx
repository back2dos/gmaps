package google.maps;

import haxe.Constraints;
import haxe.extern.*;
import google.maps.LatLng;

extern class InfoWindow extends MVCObject {
	function new(?options:{});
	
	function open(?map:Map, ?anchor:MVCObject):Void;
	function close():Void;
	
	function setContent(v:EitherType<String, js.html.Node>):Void;
	function setOptions(options:{}):Void;
	function setPosition(v:EitherType<LatLng, LatLngLiteral>):Void;
	function setZIndex(v:Float):Void;
}
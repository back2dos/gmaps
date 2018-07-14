package google.maps;

import haxe.Constraints;
import haxe.extern.*;
import google.maps.LatLng;

extern class Marker extends MVCObject {
	function new(?options:{});
	function setMap(map:Map):Void;
	function setClickable(v:Bool):Void;
	function setDraggable(v:Bool):Void;
	function setPosition(latlng:EitherType<LatLng, LatLngLiteral>):Void;
	function gettPosition():LatLng;
}
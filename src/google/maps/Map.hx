package google.maps;

import haxe.extern.*;
import js.html.Element;
import google.maps.LatLng;
import google.maps.LatLngBounds;

extern class Map extends MVCObject {
	function new(e:Element, ?options:{});
	function fitBounds(bounds:EitherType<LatLngBounds, LatLngBoundsLiteral> , ?padding:EitherType<Float, Padding>):Void;
	function setCenter(center:EitherType<LatLng, LatLngLiteral>):Void;
	function setZoom(zoom:Float):Void;
}
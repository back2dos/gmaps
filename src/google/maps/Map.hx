package google.maps;

import js.html.Element;

extern class Map extends MVCObject {
	function new(e:Element, options:{});
	function fitBounds(bounds:LatLngBounds):Void;
}
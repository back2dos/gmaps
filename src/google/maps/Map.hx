package google.maps;

import js.html.Element;

extern class Map {
	function new(e:Element, options:{});
	function fitBounds(bounds:LatLngBounds):Void;
}
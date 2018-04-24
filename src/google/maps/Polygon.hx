package google.maps;

import haxe.Constraints;
import haxe.extern.*;
import google.maps.LatLng;

extern class Polygon {
	function new(options:{});
	function getPaths():MVCArray<Path>;
	function setPaths(v:EitherType<Array<Array<LatLngLiteral>>, Array<Array<LatLng>>>):Void;
	function setMap(map:google.maps.Map):Void;
}
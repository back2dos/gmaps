package google.maps;

import haxe.Constraints;
import haxe.extern.*;
import google.maps.LatLng;

private typedef OnePath = EitherType<Array<LatLngLiteral>, Array<LatLng>>;
private typedef MultiPath = EitherType<Array<Array<LatLngLiteral>>, Array<Array<LatLng>>>;

extern class Polygon extends MVCObject {
	function new(?options:PolygonOptions);
	function setDraggable(v:Bool):Void;
	function setEditable(v:Bool):Void;
	function setMap(map:google.maps.Map):Void;
	function setOptions(options:PolygonOptions):Void;
	function setPath(v:OnePath):Void;
	function setPaths(v:EitherType<OnePath, MultiPath>):Void;
	function setVisible(v:Bool):Void;
	
	
	function getPaths():MVCArray<Path>;
}
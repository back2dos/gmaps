package google.maps;

import haxe.extern.*;
import google.maps.LatLng;

extern class LatLngBounds {
	function new(?sw:LatLng, ?ne:LatLng);
	function extend(point:EitherType<LatLng, LatLngLiteral>):Void;
	function getNorthEast():LatLng;
	function getSouthWest():LatLng;
}

@:forward
abstract LatLngBoundsLiteral(Literal) from Literal to Literal {
	public inline function new(v) 
		this = v;
	
	@:from
	public static function fromLatLngBounds(v:LatLngBounds):LatLngBoundsLiteral {
		var ne = v.getNorthEast();
		var sw = v.getSouthWest();
		return {
			east: ne.lng(),
			north: ne.lat(),
			south: sw.lat(),
			west: sw.lng(),
		}
	}
	
	@:from
	public static function fromLatLngLiterals(v:Array<LatLngLiteral>):LatLngBoundsLiteral {
		var bounds = new LatLngBounds();
		for(p in v) bounds.extend(p);
		return fromLatLngBounds(bounds);
	}
	
	#if geojson
	@:from
	public static function fromGeoJsonMultiPolygon(v:geojson.MultiPolygon):LatLngBoundsLiteral {
		var bounds = new LatLngBounds();
		for(polygon in v.polygons) for(lines in polygon.lines) for(point in lines.points) bounds.extend((point:LatLngLiteral));
		return fromLatLngBounds(bounds);
	}
	#end
}

private typedef Literal = {
	var east(default, never):Float;
	var north(default, never):Float;
	var south(default, never):Float;
	var west(default, never):Float;
}
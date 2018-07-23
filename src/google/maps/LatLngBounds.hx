package google.maps;

import haxe.extern.*;
import google.maps.LatLng;

extern class LatLngBounds {
	function new();
	function extend(point:EitherType<LatLng, LatLngLiteral>):Void;
	function getNorthEast():LatLng;
	function getSouthWest():LatLng;
}

@:forward
abstract LatLngBoundsLiteral(Literal) from Literal to Literal {
	public inline function new(v) 
		this = v;
	
	@:from
	public static inline function fromLatLngBounds(v:LatLngBounds):LatLngBoundsLiteral {
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
	public static inline function fromLatLngLiterals(v:Array<LatLngLiteral>):LatLngBoundsLiteral {
		var bound = new LatLngBounds();
		for(p in v) bound.extend(p);
		return fromLatLngBounds(bound);
	}
}

private typedef Literal = {
	var east(default, never):Float;
	var north(default, never):Float;
	var south(default, never):Float;
	var west(default, never):Float;
}
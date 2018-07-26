package google.maps;

extern class LatLng {
	function lat():Float;
	function lng():Float;
}

@:forward
abstract LatLngLiteral(Literal) from Literal to Literal {
	public inline function new(lat, lng) 
		this = {lat: lat, lng: lng}
		
		
	@:op(A == B)
	public function equals(other:LatLng):Bool {
		return switch [this, other] {
			case [null, null]: true;
			case [null, _] | [_, null]: false;
			case [v1, v2]: v1.lat == v2.lat() && v1.lng == v2.lng();
		}
	}
	
	@:op(A == B)
	public function equalsLiteral(other:LatLngLiteral):Bool {
		return switch [this, other] {
			case [null, null]: true;
			case [null, _] | [_, null]: false;
			case [v1, v2]: v1.lat == v2.lat && v1.lng == v2.lng;
		}
	}
		
	@:op(A != B)
	public inline function nequals(other:LatLng):Bool {
		return !equals(other);
	}
	
	@:op(A != B)
	public inline function nequalsLiteral(other:LatLngLiteral):Bool {
		return !equalsLiteral(other);
	}
	
	@:from
	public static inline function fromLatLng(v:LatLng):LatLngLiteral {
		return v == null ? null : {lat: v.lat(), lng: v.lng()}
	}
	
	#if geojson
	@:from
	public static inline function fromGeojson(v:geojson.util.Coordinates):LatLngLiteral {
		return {lat: v.latitude, lng: v.longitude}
	}
	#end
}

private typedef Literal = {
	var lat(default, never):Float;
	var lng(default, never):Float;
}
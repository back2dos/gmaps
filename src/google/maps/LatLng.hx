package google.maps;

extern class LatLng {
	function lat():Float;
	function lng():Float;
}

@:forward
abstract LatLngLiteral(Literal) from Literal to Literal {
	public inline function new(lat, lng) 
		this = {lat: lat, lng: lng}
	
	@:from
	public static inline function fromLatLng(v:LatLng):LatLngLiteral {
		return {lat: v.lat(), lng: v.lng()}
	}
}

private typedef Literal = {
	var lat(default, never):Float;
	var lng(default, never):Float;
}
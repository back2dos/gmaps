package google.maps;

extern class LatLng {
	function lat():Float;
	function lng():Float;
}

typedef LatLngLiteral = {
	var lat(default, never):Float;
	var lng(default, never):Float;
}
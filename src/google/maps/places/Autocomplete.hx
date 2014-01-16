package google.maps.places;

extern class Autocomplete {
	function new(target:js.html.InputElement, ?options:AutocompleteOptions):Void;
	function addListener(eventName:String, handler:Dynamic):Void;
	function getPlace():PlaceResult;
}

typedef AutocompleteOptions = {
	?types:Array<PredictionType>,
	?componentRestrictions:ComponentRestrictions,
	//?bounds: google.maps.LatLngBounds
}

typedef PlaceResult = {
	address_components:Array<{ 
		long_name:String,
		short_name:String,
		types:Array<String>,
	}>,
	name:String,
}

typedef ComponentRestrictions = {
	country: String,
}

typedef PredictionType = String;//"establishment", "geocode", "(regions)", "(cities)"
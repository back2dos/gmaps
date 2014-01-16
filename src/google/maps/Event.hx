package google.maps;

@:native('google.maps.event')
extern class Event {
	static function addDomListener(target:js.html.Element, type:String, handler:Dynamic):MapEventListener;
	static function removeListener(listener:MapEventListener):Void;	
}

extern class MapEventListener {}
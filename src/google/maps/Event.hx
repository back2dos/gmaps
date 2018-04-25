package google.maps;

import haxe.Constraints;

@:native('google.maps.event')
extern class Event {
	static function addDomListener(target:js.html.Element, type:String, handler:Function):MapsEventListener;
	static function addDomListenerOnce(target:js.html.Element, type:String, handler:Function):MapsEventListener;
	static function addListener(target:Dynamic, event:String, handler:Function):MapsEventListener;
	static function addListenerOnce(target:Dynamic, event:String, handler:Function):MapsEventListener;
	static function removeListener(listener:MapsEventListener):Void;	
	static function clearListeners(target:Dynamic, event:String):Void;
	static function clearInstanceListeners(target:Dynamic):Void;
}

extern class MapsEventListener {
	function remove():Void;
}
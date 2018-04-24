package google.maps;

import haxe.Constraints;

@:native('google.maps.event')
extern class Event {
	static function addDomListener(target:js.html.Element, type:String, handler:Function):MapEventListener;
	static function addDomListenerOnce(target:js.html.Element, type:String, handler:Function):MapEventListener;
	static function addListener(target:Dynamic, event:String, handler:Function):MapEventListener;
	static function addListenerOnce(target:Dynamic, event:String, handler:Function):MapEventListener;
	static function removeListener(listener:MapEventListener):Void;	
	static function clearListeners(target:Dynamic, event:String):Void;
	static function clearInstanceListeners(target:Dynamic):Void;
}

extern class MapEventListener {
	function remove():Void;
}
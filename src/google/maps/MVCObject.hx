package google.maps;

import haxe.Constraints;
import google.maps.Event;

extern class MVCObject {
	function addListener(eventName:String, handler:Function):MapsEventListener;
	function bindTo(key:String, target:MVCObject, ?targetKey:String, ?noNotify:Bool):Void;
	function get(key:String):Dynamic;
	function notify(key:String):Void;
	function set(key:String, value:Dynamic):Void;
	function setValues(values:Dynamic):Void;
	function unbind(key:String):Void;
	function unbindAll():Void;
}
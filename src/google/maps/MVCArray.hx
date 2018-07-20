package google.maps;

extern class MVCArray<T> extends MVCObject {
	function clear():Void;
	function forEach(f:T->Int->Void):Void;
	function getArray():Array<T>;
	function getAt(i:Int):T;
	function getLength():Int;
	function insertAt(i:Int, e:T):Void;
	function pop():T;
	function push(e:T):Int;
	function removeAt(i:Int):T;
	function setAt(i:Int, e:T):Void;
}
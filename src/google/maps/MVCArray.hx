package google.maps;

extern class MVCArray<T> extends MVCObject {
	function forEach(f:T->Int->Void):Void;
	function getArray():Array<T>;
}
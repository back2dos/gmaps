package google.maps;

extern class MVCArray<T> {
	function forEach(f:T->Int->Void):Void;
	function getArray():Array<T>;
}
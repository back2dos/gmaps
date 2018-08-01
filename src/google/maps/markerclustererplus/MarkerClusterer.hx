package google.maps.markerclustererplus;

import google.maps.*;

// https://unpkg.com/@google/markerclustererplus@2.1.11/src/markerclusterer.js

@:native('MarkerClusterer')
extern class MarkerClusterer {
	function new(map:Map, ?markers:Array<Marker>, ?options:MarkerClustererOptions);
	
	function addMarkers(markers:Array<Marker>, ?nodraw:Bool):Array<Marker>;
	function clearMarkers():Void;
	
	function getMap():Map;
	function getMarkers():Array<Marker>;
	function getZoomOnClick():Bool;
	
	function setMap(v:Map):Void;
	function setZoomOnClick(v:Bool):Void;
	
}


package google.maps.markerclustererplus;

import google.maps.*;

extern class Cluster {
	function getCenter():LatLng;
	function getMarkers():Array<Marker>;
	function getSize():Int;
}
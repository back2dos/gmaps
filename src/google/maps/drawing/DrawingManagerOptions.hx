package google.maps.drawing;

import google.maps.*;

typedef DrawingManagerOptions = {
	?circleOptions:CircleOptions,
	?drawingControl:Bool,
	?drawingControlOptions:DrawingControlOptions,
	?drawingMode:OverlayType,
	?map:Map,
	?markerOptions:MarkerOptions,
	?polygonOptions:PolygonOptions,
	?polylineOptions:PolylineOptions,
	?rectangleOptions:RectangleOptions,
}
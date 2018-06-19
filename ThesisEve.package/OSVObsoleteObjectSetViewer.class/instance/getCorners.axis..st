utility
getCorners: anOV axis: anAxis
	" get the corners along the x/y axis of an element "

	| corners firstCorner secondCorner |

	firstCorner := self getCoord: anOV axis: anAxis.
	secondCorner := firstCorner+(self getElementMeasurements: anOV axis: anAxis).
	
	corners := firstCorner@secondCorner.
	^ corners
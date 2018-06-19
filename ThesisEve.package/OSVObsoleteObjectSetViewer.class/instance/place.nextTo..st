utility
place: anOV nextTo: anotherOV
	" place anOV to the right of anotherOV along the x-Axis "
	| cornerSelectedOV node coords |
	coords := self getCoordinates: anOV.
	
	cornerSelectedOV := (self getCorners: anotherOV axis: #x)y.
	node := anOV node.
	node translateTo: (cornerSelectedOV @ coords y).
	anOV cachedPos: (cornerSelectedOV @ coords y)
accessing
position
	^ position ifNil: [ position := self getCoordinates ]
	
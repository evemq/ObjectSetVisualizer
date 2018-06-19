utility
initialSavePositions
	" store x and y coordinates of each object after the first rendering, so the view 	can persist when new objects are added "
	self objectVisualizations
		do: [ :each | each cachedPos: (self getCoordinates: each) ].
	^ view
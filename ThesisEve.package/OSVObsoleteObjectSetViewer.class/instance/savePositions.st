utility
savePositions
	" store x and y coordinates of each object after the original layout has been changed, so the view can persist when new objects are added "
	self objectVisualizations
		do: [ :each | each cachedPos ifNotNil: [ each cachedPos: (self getCoordinates: each) ] ].
	^ view
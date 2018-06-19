rendering
checkAndCorrectOverlay
	" check wether an element that does not have a cachedPosition overlays with one that does, and if it does correct the overlay if it does not overlay then just save the position to chachedPos "
	
	self objectVisualizations do:[ :each | each cachedPos 
		ifNil: [ self calculteDistanceToNextObjectAlongX.
			(self checkElementOverlay: each)
			ifTrue: [ self findSpaceForAndPlace: each ] 
			ifFalse: [ each cachedPos: (self getCoordinates: each) ] ] ].
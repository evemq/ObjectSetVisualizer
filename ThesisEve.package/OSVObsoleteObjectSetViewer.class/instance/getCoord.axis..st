utility
getCoord: anOV axis: anAxis
	" get the  x/y-coordinate of an object in the view "
	| node tShape mat coord |	
	node := anOV node.
	tShape := node trachelShape.
	mat := tShape matrix.
	
	anAxis = #x
		ifTrue: [ coord := mat x ].
	anAxis = #y
		ifTrue: [ coord := mat y ].
	^ coord
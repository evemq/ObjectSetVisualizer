utility
getElementMeasurements: anOV axis: anAxis
	" get the height/width of an object in the view "
	| node tShape ext measurement |	
	node:= anOV node.
	tShape:= node trachelShape.
	ext:= tShape extent.
	
	anAxis = #x
		ifTrue: [ measurement := ext x ].
	anAxis = #y
		ifTrue: [ measurement := ext y ].
	^ measurement
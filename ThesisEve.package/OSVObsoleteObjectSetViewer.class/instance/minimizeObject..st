utility
minimizeObject: anObject
	" only show minimized information of object "
	self objectVisualizations 
		do: [ :each | each target = anObject
			ifTrue: [ each min: true ] ].
	^ self render
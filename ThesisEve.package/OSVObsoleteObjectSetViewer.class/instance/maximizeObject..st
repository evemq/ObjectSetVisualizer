utility
maximizeObject: anObject
	" show all information of object again "
	self objectVisualizations 
		do: [ :each | each target = anObject 
			ifTrue: [ each min: false ] ].
	^ self render
adding
addTemporaryFromClass:  aClass
	" return the objectVisualizations that are instances of the class aClass back to the view and remove them from the temporary objectVisualizations "
	| objectsToReturn ovsToReturn |
	ovsToReturn := OrderedCollection new.
	objectsToReturn := OrderedCollection new.
	
	self tempRemovedObjectVisualizations do: [ :o | (o target isMemberOf: aClass) 
		ifTrue: [ objectsToReturn add: o target. 
			ovsToReturn add: o ] ].
	self addObjects: objectsToReturn.
	ovsToReturn 
		do: [ :ov | self tempRemovedObjectVisualizations removeAllSuchThat: [ :each | each = ov ] ].
	self render
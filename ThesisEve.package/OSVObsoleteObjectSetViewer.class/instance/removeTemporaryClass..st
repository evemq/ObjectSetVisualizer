removing
removeTemporaryClass: aClass
	" remove all the objectVisualizations that are instances of the class aClass from the view temporarely "
	| objectsToRemove ovsToRemove |
	ovsToRemove := OrderedCollection new.
	objectsToRemove := OrderedCollection new.
	
	self objectVisualizations do: [ :o | (o target isMemberOf: aClass) 
		ifTrue: [ objectsToRemove add: o target.
			ovsToRemove add: o ] ].
	
	self addTempRemovedObjectVisualizations: ovsToRemove.
	self removeObjects: objectsToRemove.
	self render
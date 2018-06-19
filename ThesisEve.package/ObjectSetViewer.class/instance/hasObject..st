testing
hasObject: anObject
	^ self rootNodes anySatisfy: [ :each | each target = anObject ]
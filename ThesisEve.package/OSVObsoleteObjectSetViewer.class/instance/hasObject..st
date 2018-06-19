testing
hasObject: anObject
	" test whether I have an object visualization representing the given object "
	^ self objectVisualizations anySatisfy: [ :each | each target = anObject ]
utility
collection: aCollection hasObject: anObject
	" check if a collection has an object and return true/false "
	^ aCollection anySatisfy: [ :each | each  = anObject ]
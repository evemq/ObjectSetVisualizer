adding
addSubElements: aCollection
	" add a set of subelements of an object, for example the valueLinks of a LinkedList "
	self viewer addObjects: aCollection.
	self viewer render.
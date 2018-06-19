adding
addObjects: aCollection
	" add a collection of objects to the view "
	aCollection do: [ :o | self addObject: o ]
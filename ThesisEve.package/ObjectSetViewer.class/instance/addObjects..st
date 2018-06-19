adding
addObjects: aCollection
	aCollection do: [ :each | self addObject: each ].
removing
removeObjects: aCollection
	" remove a collection of objectsVisualizations "
	aCollection do: [ :obj | self removeObject: obj ].
	^ self render
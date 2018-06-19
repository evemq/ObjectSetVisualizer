sorting
sortObjectVisualizationsByCoordinates
	" sort the objectVisualizations by their x coordinates"
	| ovsOrdered cornerA cornerB |
	ovsOrdered := self objectVisualizations as: OrderedCollection.
	
	ovsOrdered sort: [ :a :b | 
		cornerA := (self getCorners: a axis: #x). 
		cornerB := (self getCorners: b axis: #x).
		cornerA x < cornerB x].
	^ ovsOrdered
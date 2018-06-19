adding
addTempRemovedObjectVisualizations: anOVSCollection
	" add a collection of objectVisualizations to the temporary objectVisualizations "
	anOVSCollection do: [ :ov | self addTempRemovedObjectVisualization: ov ]
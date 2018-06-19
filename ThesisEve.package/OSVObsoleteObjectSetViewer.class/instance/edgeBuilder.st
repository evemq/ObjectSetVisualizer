shapes
edgeBuilder
	^ edgeBuilder ifNil: [
		edgeBuilder := self newEdgeBuilder
	]
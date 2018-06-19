accessing
addEdgesToViewer
	| edges |
	self assert: (self viewer isKindOf: ObjectSetViewer).
	edges := self getEdges.
	edges do: [ :anEdge | self viewer addEdge: anEdge ].
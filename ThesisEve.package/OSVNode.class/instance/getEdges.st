as yet unclassified
getEdges
	| edges |
	edges := self children flatCollect: [ :each | each getEdges ].
	edges do: [ :e | self assert: (e isKindOf: OSVEdge) ].
	^ edges
adding
addEdge: anOSVEdge
	self assert: (anOSVEdge isKindOf: OSVEdge).
	self edges add: anOSVEdge
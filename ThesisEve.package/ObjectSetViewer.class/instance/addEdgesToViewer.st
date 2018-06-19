accessing
addEdgesToViewer
	self rootNodes do: [ :each | self assert: (each viewer isKindOf: ObjectSetViewer) ].
	self rootNodes do: [ :each | each addEdgesToViewer ]
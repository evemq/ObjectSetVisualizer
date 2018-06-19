adding
getEdges
	" 	self viewer addEdgeFrom: self root toObject: (self root target instVarNamed: self variable) label: self variable. "
	| out |
	out := self viewer nodeForTarget: (self root target instVarNamed: self variable) ifExists: [ :targetNode |
		| list |
		list := OrderedCollection new.
		list add: (self edgeTo: targetNode).
		list
	] ifNone: [ OrderedCollection new ].
	^ out 
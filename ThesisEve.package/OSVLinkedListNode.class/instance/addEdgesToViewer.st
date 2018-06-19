adding
addEdgesToViewer
	"self children do: [ :each |
		self viewer nodeForTarget: self target ifExists: [ :osvNodeTarget |
			self viewer addEdge: (OSVLabeledEdge new from: self to: osvNodeTarget; label: 'changeme'; yourself)
		].
	]."
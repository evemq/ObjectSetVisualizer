as yet unclassified
edgeBlock
	^ [ :targetOSVNode |
		OrderedCollection new add: (OSVLabeledEdge new from: self to: targetOSVNode; label: 'changeme'); yourself
	]
adding
edgeBlock
	^ [ :targetOSVNode |
		OrderedCollection new add: (OSVAliasEdge new from: self to: targetOSVNode); yourself
	]
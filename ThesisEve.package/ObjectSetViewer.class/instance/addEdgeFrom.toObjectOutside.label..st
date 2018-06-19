accessing
addEdgeFrom: aSourceOSVNode toObjectOutside: anObject label: aText
	" add an edge only if the source is not a part of the node representing anObject "
	self nodeForTarget: anObject ifExists: [ :aTargetRootOSVNode |
		(aSourceOSVNode root ~= aTargetRootOSVNode)	 ifTrue: [
				self addEdgeFrom: aSourceOSVNode toObject: anObject label: aText
		]
	].
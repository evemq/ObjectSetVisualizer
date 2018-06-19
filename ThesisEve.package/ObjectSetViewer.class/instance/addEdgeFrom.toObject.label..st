accessing
addEdgeFrom: aSourceOSVNode toObject: anObject label: aText
	self nodeForTarget: anObject ifExists: [ :aTargetRootOSVNode |
		self addEdgeFrom: aSourceOSVNode to: aTargetRootOSVNode label: aText.
	].
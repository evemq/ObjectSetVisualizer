accessing
addEdgeFrom: aSourceOSVNode toObject: anObject labelOld: aText
	self nodeForTarget: anObject ifExists: [ :aTargetRootOSVNode |
		self addEdgeFrom: aSourceOSVNode to: aTargetRootOSVNode label: aText.
	].
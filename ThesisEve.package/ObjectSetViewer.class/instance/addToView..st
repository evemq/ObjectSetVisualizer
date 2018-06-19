adding
addToView: anOSVNode
	self assert: (anOSVNode viewer = self).
	self view addAll: anOSVNode rtElements.
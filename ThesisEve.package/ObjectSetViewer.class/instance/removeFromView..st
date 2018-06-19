removing
removeFromView: anOSVNode
	" Not the correct solution, look at with Claudio, it should not be the orderedCollection at: 1 but rather we should be abble to give anOSVNode rtElements as an argument, but there is an error currently"
	self assertNodeInView: anOSVNode.
	"self assert: (anOSVNode viewer = self)."
	self view removeElement:(anOSVNode rtElements at: 1) .
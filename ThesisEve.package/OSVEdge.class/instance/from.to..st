accessing
from: aSourceOSVNode to: aTargetOSVNode
	self
		assert: (aSourceOSVNode isKindOf: OSVNode);
		assert: (aTargetOSVNode isKindOf: OSVNode).
	source := aSourceOSVNode.
	target := aTargetOSVNode
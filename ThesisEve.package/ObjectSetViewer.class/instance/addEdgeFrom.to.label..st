accessing
addEdgeFrom: aSourceOSVNode to: aTargetOSVNode label: aText
	| builder |
	self
		assertNodeInView: aSourceOSVNode;
		assertNodeInView: aTargetOSVNode.

	builder := RTEdgeBuilder new.
	builder
		view: self view;
		objects: { aSourceOSVNode. aTargetOSVNode. };
		label: [ :s :t | aText ].
	builder shape: (RTArrowedLine new
		attachPoint: RTBorderAttachPoint instance;
		color: Color gray;
		yourself).
	builder connectFrom: aSourceOSVNode to: aTargetOSVNode.
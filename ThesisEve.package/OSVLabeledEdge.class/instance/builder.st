accessing
builder
	builder := RTEdgeBuilder new.
	builder
		label: [ :s :t | self label ].
	builder shape: (RTArrowedLine new
		attachPoint: RTBorderAttachPoint instance;
		color: Color blue;
		yourself).
	^ builder
shapes
newEdgeBuilder
	" get a new edge builder "
	" TODO: we may not need a fresh one every time... "
	| builder |
	builder := RTEdgeBuilder new.
	builder
		view: self view;
		objects: (self objectVisualizations collect: [ :each | each target ]).
	builder shape: (RTArrowedLine new
		attachPoint: RTBorderAttachPoint instance;
		color: Color gray;
		yourself).
	^ builder
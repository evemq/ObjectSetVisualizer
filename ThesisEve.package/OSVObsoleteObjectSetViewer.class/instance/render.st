rendering
render
	self savePositions.
	self view removeAllEdges.
	self minimizeIfTooManyOVS.
"	self countSharedBy."
	self objectVisualizations do: [ :o | o render ].
	self doLayout.
	self restorePosition.
	self menus do: [ :o | o render ].
	self centerCamera.
	^ self view
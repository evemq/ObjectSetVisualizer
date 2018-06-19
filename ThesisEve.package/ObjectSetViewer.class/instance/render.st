adding
render
	self saveRootNodePositions.
	self view removeAllEdges; removeAllElements.
	self renderNodes; renderEdges.
	"self renderMenus."
	self doLayout.
	self restoreRootNodePositions.
	^ view
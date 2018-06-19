removing
removeRootNode: aRootNode
	self rootNodes removeAllSuchThat: [ :each | each = aRootNode ].
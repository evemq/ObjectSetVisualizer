graph
menuNoMoldableView
	" add a menu if there are objects for which there is no node customization "
	self collectMissingMoldableView size == 0
		ifFalse:[ self 
			addMenu: 'Missing node customizations' 
			content: #collectMissingMoldableView 
			button: #buttonAddProtocolForClass:	].
	

shapes
buttonAddProtocolForClass: aClass
" returns a button for adding a protocol to a class in order to create node customizations "
	| button |
	button := OSVObsoleteObjectVisualization new viewer: self;
		button: #right 
		withPopup: 'Add a customization for this object class' 
		withClickActionSelf: #addProtocolOpenBrowserForClass: 
		arguments: { aClass }.
	^ button
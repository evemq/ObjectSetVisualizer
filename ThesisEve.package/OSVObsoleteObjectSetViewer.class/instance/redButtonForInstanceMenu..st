shapes
redButtonForInstanceMenu: aClass
	" returns the green button for the menu listing the instances of each class "
	^ (OSVObsoleteObjectVisualization new viewer: self;
			button: #redCircle 
			withPopup: 'Click to remove the elements of this class from the view' 
			withClickActionViewer: #removeTemporaryClass: 
			arguments: { aClass }).
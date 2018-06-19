shapes
greenButtonForInstanceMenu: aClass
	" returns the green button for the menu listing the instances of each class "
	^ (OSVObsoleteObjectVisualization new viewer: self;
			button: #greenCircle 
			withPopup: 'Click to add the elements of this class to the view' 
			withClickActionViewer: #addTemporaryFromClass: 
			arguments: { aClass }).
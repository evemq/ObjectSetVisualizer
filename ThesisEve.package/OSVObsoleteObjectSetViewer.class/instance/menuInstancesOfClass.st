menu
menuInstancesOfClass
	" add a menu to show the number of instances of each class that are in the view "
	self addMenu: 'Number of instances of the classes in the view' 
		content: #nrOfInstancesOfClassesAsText 
		button: #buttonShowClassElements:
	

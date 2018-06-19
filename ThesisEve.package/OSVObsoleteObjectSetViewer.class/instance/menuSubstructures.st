menu
menuSubstructures
	" add a menu to show objects which have subelements and give the option to delete the complete substructure at once "
	self addMenu: 'List of elements with substructures' 
		content: #collectNamesOfOVSWithSubstructures
		button: #buttonRemoveSubstructure:
	

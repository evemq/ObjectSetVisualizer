adding
addMenu: aTitle content: aStringCollection button: aButtonMethod
	" add a Menu to our view if it is not already in the view "
	(self hasMenu: aTitle) 
		ifFalse:[self menus add: 
			(OSVObsoleteMenuViewer new 
				title: aTitle; 
				viewer: self; 
				content: aStringCollection; 
				button: aButtonMethod; 
				yourself) ]
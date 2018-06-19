rendering
render
	" render the menu and add it to the view "
	| group box |
	group := RTGroup new. 
	" update the content so it is correct "
	self updateContent.
	group 
		add: (self renderMenuName);
		add: (self renderContent).
	RTVerticalLineLayout new gapSize: 0; on: group.
	
	box := self boxShapeBuilder elementOn: nil.
	
	" make box and group stick to each other "
	RTNest new on: box nest: group.
	
	box @ RTDraggable.
	
	self viewer addToView: box; addToView: group.
	
	self node: box.
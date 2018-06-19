rendering
render
	" add a node to the view representing the target.
	  The result is a box with some generic information (object printString representation, instance variable names and values) as well as 'moldable' representations (such as a bitmap view of Morph targets)."
	| group box |
	" group for all vertical elements (without the border) "
	group := RTGroup new.
		
	"Group if the object is minimized"
	(self min) 
		ifTrue: [ group add: (self renderObjectHeader)]
	"Group if the object is maximized"
		ifFalse: [ group
			add: (self renderObjectHeader);
			addAll: (self renderInstanceVariables);
			addAll: (self renderMoldableViews);
			addAll: (self renderLinkedList)
			].	
	RTVerticalLineLayout new gapSize: 0; on: group.

	" draw a box around the group "
	"Color box differently if it is part of multiple elements, still needs to be improved"
	
	(self sharedBy > 0 ) ifTrue: 
		[box := self viewer boxShapeBuilderNotShared elementOn: self target ]
	ifFalse: 
		[box := self viewer boxShapeBuilderNotShared elementOn: self target ].
	
	" make box and group stick to each other "
	RTNest new on: box nest: group.
	
	box @ RTDraggable.
	box @	(RTHighlightable new
			highlightElements: [ :rtElement |
				| connected |
				connected := OrderedCollection new.
				connected
					add: rtElement;
					addAll: (rtElement connectedEdges flatCollect: [ :each | {each from. each to} ]).
				connected
				];
			color: (Color yellow alpha: 0.3)
		).
	
	self viewer addToView: box; addToView: group.
	
	self node: box.
	
	self viewer refreshEdges.  
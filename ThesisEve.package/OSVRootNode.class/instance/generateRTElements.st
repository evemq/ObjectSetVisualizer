as yet unclassified
generateRTElements
	| group box |
	
	" group for all vertical elements (without the border) "
	group := OSVRTGroup new model: OSVDummyNode new; yourself.

	" Add rtElements of child nodes. "
	self children do: [ :each | group addAll: (each rtElements) ].
	
	" line the group elements vertically "
	RTVerticalLineLayout new gapSize: 0; on: group.
	
	box := (RTShapeBuilder new box
			color: Color white;
			borderColor: Color black) elementOn: self.
	
	" make box and group stick to each other "
	RTNest new on: box nest: group.
	
	" draggable and hover highlighting "
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
		self rootElement: box.
		
		" remember that rtgroup is polymorphic to rtelement, so it is fine if we return it "
		self rtElements: { box. group. }
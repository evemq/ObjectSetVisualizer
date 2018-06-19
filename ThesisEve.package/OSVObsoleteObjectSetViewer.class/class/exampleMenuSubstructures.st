as yet unclassified
exampleMenuSubstructures
	| view list list2 links|
	view := self new.
	list := LinkedList new.
	list2 := LinkedList new.
	links := OrderedCollection new.
	
	list add: Color yellow;
		add: Color blue;
		add: Color red.
	list2 add: Color green.
	
	list linksDo: [ :each | links add: each ].
	list2 linksDo: [ :each | links add: each ].
	
	view addObjects: links;
		addObjects: list;
		addObjects: list2;
		addObject: list;
		addObject: list2;
		menuSubstructures;
		render.
		
	^ view view
	

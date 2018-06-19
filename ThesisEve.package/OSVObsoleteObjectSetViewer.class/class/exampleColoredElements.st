as yet unclassified
exampleColoredElements
	| list liste liste2 links view |
	
	list := LinkedList new.
	liste := LinkedList new.
	liste2 := LinkedList new.
	
	liste2 add: Color green.
	
	list add: Color blue.
	list add: Color red.
	list add: Color green.
	
	liste add: Color blue.
	liste add: Color red.
	liste add: Color green.
	
	links := OrderedCollection new.
	list linksDo: [ :each | links add: each ].
	liste linksDo: [ :each | links add: each ].
	
	view:= OSVObsoleteObjectSetViewer new.
	view addObjects: list,links, liste2.
	view addObject: list.
	view addObject: liste2.
	view addObject: liste.
	view menuNoMoldableView.
	
	view render.
	^ view
as yet unclassified
exampleMenuNoMoldableViews
	| view |
	view := self new.
	
	view addObject: 1.
	view addObject: OrderedCollection new.
	view addObject: LinkedList new.
	view addObject: LinkedList.
	
	view menuNoMoldableView.
	view render.
	^ view view
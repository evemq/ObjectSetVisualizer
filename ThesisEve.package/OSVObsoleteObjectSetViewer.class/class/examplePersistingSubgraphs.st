as yet unclassified
examplePersistingSubgraphs
"Subgraph persisits when an element is moved and also when a new element is added"
	|list links view|
	list:= LinkedList new.

	list add: Color blue.
	list add: Color red.
	list add: Color green.

	links := OrderedCollection new.
	list linksDo: [ :each | links add: each ].
	
	view:= self new.
	view addObject:list.
	view addObjects: list, links.

	view render.
	
	view objectVisualizations do:[:each| (each target==Color blue)ifTrue:[ each node 	translateBy:(0@100)]].
	view render.
	
	view addObject: Color yellow.
	view render.
	^ view
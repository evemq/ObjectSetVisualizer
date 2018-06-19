as yet unclassified
exampleMinMax
	| list links osv |
	list := LinkedList new
		add: Color orange;
		add: Color red;
		add: Color blue;
		add: Color green;
		yourself.
	
	links := OrderedCollection new.
	list linksDo: [ :each | links add: each ].

	
	osv := OSVObsoleteObjectSetViewer new.
	osv addObject: nil.
	
	osv addObjects: links, list.
	osv render.
	
	osv removeObject: nil.
	osv minimizeObject: Color blue.
	osv maximizeObject: Color blue.
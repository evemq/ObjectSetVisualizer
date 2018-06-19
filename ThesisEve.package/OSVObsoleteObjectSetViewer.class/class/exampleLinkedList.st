as yet unclassified
exampleLinkedList

	| list links osv |
	list := LinkedList new
		add: Color orange;
		add: Color red;
		add: Color blue;
		add: Color green;
		yourself.
	
	links := OrderedCollection new.
	list linksDo: [ :each | links add: each ].

	
	osv := self new.
	osv addObject: list.
	
	osv render.
	^ osv
examples
exampleLinkedListWith3ColorsAndLinks
	| list links osv |
	list := LinkedList new
		add: Color orange;
		add: Color red;
		add: Color yellow;
		yourself.
	
	links := OrderedCollection new.
	list linksDo: [ :each | links add: each ].

	osv := self new.
	osv addObject: list.
	osv addObjects: list.
	osv addObjects: links.
	osv render.
	
	^ osv view
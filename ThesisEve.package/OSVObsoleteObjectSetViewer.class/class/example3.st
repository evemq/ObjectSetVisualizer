as yet unclassified
example3
	| osv list links |
	list := LinkedList new
		add: Color orange;
		add: Color red;
		add: Color blue;
		add: Color green;
		yourself.
	links := OrderedCollection new.
	list linksDo: [ :each | links add: each ].
	osv := self new.
	osv addObject: nil.
	osv addObject: list.
	osv addObjects: links, list.
	osv render.
	^ osv
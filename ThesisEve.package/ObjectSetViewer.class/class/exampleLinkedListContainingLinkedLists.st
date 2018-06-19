as yet unclassified
exampleLinkedListContainingLinkedLists
	| mainlist listone listtwo listthree view |
	mainlist := LinkedList new.
	listone := LinkedList new.
	listone add: Color yellow.
	listone add: Color blue.
	listone add: Color red.

	listtwo := LinkedList new.
	listtwo add: Color green.
	listtwo add: Color random.

	listthree:= LinkedList new.
	listthree add: Color red.
	listthree add: Color random.
	listthree add: Color random.
	listthree add: Color random.

	mainlist add: listone.
	mainlist add:  listtwo.
	mainlist add:  listthree. 

	view := self new.
	view addObject: mainlist.
	view render. 
	^ view view
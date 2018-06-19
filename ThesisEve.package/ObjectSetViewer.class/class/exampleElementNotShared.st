as yet unclassified
exampleElementNotShared
	| list liste view | 
	list := LinkedList new.
	list add: Color blue.
	list add: Color red;
	add: Color green.
	list add:Color yellow.

	liste := LinkedList new.
	liste add: Color blue.
	liste add: Color green.
	liste add: Color red.

	view := ObjectSetViewer new.
	view addObjects: list.
	view addObject: list.
	"view addObject: liste."
	view render. 
	^ view 
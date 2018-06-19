as yet unclassified
exampleMenuInstancesOfClass
	| view list |
	view := self new.
	list := LinkedList new. 
	
	(1 to: 20) do: [ :nr | view addObject: Color random ].
	(1 to: 15) do: [ :nr | view addObject: nr ].
	view addObject: list.
	
	view menuInstancesOfClass.
	view render.
	^ view view
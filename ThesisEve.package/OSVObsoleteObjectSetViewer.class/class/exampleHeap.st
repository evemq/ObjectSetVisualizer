as yet unclassified
exampleHeap

	| heap view|
	heap := Heap new.
	heap add: 5;
	add: 2;
	add: 6;
	add: 3;
	add: 1.
	
	view := OSVObsoleteObjectSetViewer new.
	view addObject: heap.
	view menuNoMoldableView.
	view render.
	^ view
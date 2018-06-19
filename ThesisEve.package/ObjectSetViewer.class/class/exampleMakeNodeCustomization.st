as yet unclassified
exampleMakeNodeCustomization
	| list view |
	list := LinkedList new.
	list add: Color blue.
	list add: Color red.

	list add: GLMUIThemeExtraIcons glamorousDown .
	list add: GLMUIThemeExtraIcons glamorousBug .

	view := ObjectSetViewer new.
	view addObjects: list.
	view addObject: list.
	view render.
	^ view view
rendering
renderContent
	" render the menu content by rendering the individual elements of the ordered collection as 	individual labels "
	| contents |
	contents := self content collect: [ :c | (self renderIndividualContentLabel: c) ] as: RTGroup.
	
	RTVerticalLineLayout new gapSize: 0; on: contents.
	^ contents
	
	
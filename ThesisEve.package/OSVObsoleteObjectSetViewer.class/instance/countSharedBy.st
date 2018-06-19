utility
countSharedBy
	" make sure the variable sharedby, that counts how many subelement groups an ObjectVisualization is in, is first reset and then counted corretly "
	| ovsWithSub |
	" set the variable sharedby back for all the ObjectVisualizations "
	self setBackSharedByVariable.
	
	" collect all the objectVisualizations which have subelements "
	ovsWithSub := self collectOVSWithSubelements.
	
	" increase the variable sharedby if an objectVisualization is a subelement of another objectVisualization "
	ovsWithSub do: [ :ovsWS | self increaseIfSubelementOf: ovsWS ].
	
		
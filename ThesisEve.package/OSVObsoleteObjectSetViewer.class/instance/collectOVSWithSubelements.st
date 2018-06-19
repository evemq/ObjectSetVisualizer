utility
collectOVSWithSubelements
	" collect the objectVisualizations that have subelements, which contain the pragma <subElements> "
	| ovsWithSub |
	ovsWithSub := OrderedCollection new. 
	
	self objectVisualizations 
		do: [ :o | (o subElementsOfObject size ~= 0) ifTrue: [ ovsWithSub add: o ] ].
	^ ovsWithSub
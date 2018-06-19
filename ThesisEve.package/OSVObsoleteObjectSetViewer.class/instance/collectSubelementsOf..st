utility
collectSubelementsOf: anObject
	" collect the subelements of anObject "
	| elems |
	elems := OrderedCollection new.
	(self hasObject: anObject) 
		ifTrue: [ elems addAll: (self returnObjectVisualization: anObject) subElementsOfObject ].
	^ elems
utility
containsSameElements: aCollection as: anotherCollection
	" check wether two collections contain same elements and return the common elements "
	| elementsInBoth |
	elementsInBoth := OrderedCollection new. 
	anotherCollection do: 
		[ :elem | aCollection do: 
			[ :anotherelem | elem == anotherelem 
				ifTrue: [ elementsInBoth add: elem] ] ].
	^ elementsInBoth
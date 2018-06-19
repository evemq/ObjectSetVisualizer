testing
elementsNotInView: aCollection
	| ovsNotINView |
	" return the elements of a collection that are not yet in the view "
	ovsNotINView := OrderedCollection new.
	
	aCollection do: [ :elem | ovsNotINView add: elem ].
	ovsNotINView removeAllSuchThat: [ :elem | self hasObject: elem ].
	
	^ ovsNotINView
as yet unclassified
noneOfTheObjectsInView: aCollection
	| value | 
	value := true.
	aCollection do: [ :each | (self hasObject: each) ifTrue:[ value := false ]].
	^ value
as yet unclassified
allObjectsInView: aCollection
	| value | 
	value := true.
	aCollection do: [ :each | (self hasObject: each) ifFalse:[ value := false ]].
	^ value
	
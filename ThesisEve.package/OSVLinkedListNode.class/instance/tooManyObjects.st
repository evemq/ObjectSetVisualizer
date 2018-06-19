as yet unclassified
tooManyObjects
	| boolean | 
	boolean := false.
	(self target)size > 5 ifTrue: [ boolean := true ].
	^ boolean
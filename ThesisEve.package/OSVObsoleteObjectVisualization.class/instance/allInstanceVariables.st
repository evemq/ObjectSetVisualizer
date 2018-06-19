instance variables
allInstanceVariables
	" get a list of all instance variables along the inheritance chain (ordered alphabetically) "
	| c ivs ivsExclude |
	
	c := self target class.
	ivs := OrderedCollection new.
	ivs addAll: c instanceVariables.
	[ (c := c superclass) notNil ] whileTrue: [
		ivs addAll: c instanceVariables ].
	
	" exclude these instance variables "
	ivsExclude := self excludedInstanceVariables. 
	ivsExclude do: [ :ivExclude | ivs do:[ :iv | iv == ivExclude 
		ifTrue: [ ivs remove:iv ] ] ]. 
		
	^ ivs sort: [ :a :b | a < b ]
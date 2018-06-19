as yet unclassified
targetInstanceVariables
	" get a list of all instance variables along the inheritance chain (ordered alphabetically) "
	| c ivs |
	
	c := self target class.
	ivs := OrderedCollection new.
	ivs addAll: c instanceVariables.
	[ (c := c superclass) notNil ] whileTrue: [
		ivs addAll: c instanceVariables
	].
	^ ivs sort
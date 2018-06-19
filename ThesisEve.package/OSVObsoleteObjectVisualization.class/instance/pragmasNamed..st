accessing
pragmasNamed: aLabel
	" get the pragmas along the inheritance tree with the given label "
	| c pragmas |
	c := self target class.
	pragmas := OrderedCollection new.
	pragmas addAll: (Pragma allNamed: aLabel in: c).
	[ (c := c superclass) notNil ] whileTrue: [
		pragmas addAll: (Pragma allNamed: aLabel in: c).
	].
	^ pragmas
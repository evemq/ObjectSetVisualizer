testing
hasPragmas
	| value pragmas |
	value := false.
	pragmas := self allSubelementPragmas.
	pragmas isNotEmpty ifTrue: [ value := true ].
	^ value
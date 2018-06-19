testing
hasPragmas
	| value pragmas |
	value := false.
	pragmas := self allMorphPragmas.
	pragmas isNotEmpty ifTrue: [ value := true ].
	^ value
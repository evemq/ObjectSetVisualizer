testing
hasNodeCustomization
	| value | 
	value := false.
	(OSVMoldableNode on: self target viewer: self viewer parent: self) hasPragmas 
		ifTrue: [ value := true ].
	^ value
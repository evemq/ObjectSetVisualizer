accessing
allInstanceVariablePragmas
	" get the Pragma objects with the morphPragmaName in the target's inheritance tree "
	^ self pragmasNamed: self instanceVariablePragmaName
	
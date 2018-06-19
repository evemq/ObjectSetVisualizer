accessing
allSubelementPragmas
	" get the Pragma objects with the subelementPragmaName in the target's inheritance tree "
	^ self pragmasNamed: self subelementPragmaName
	
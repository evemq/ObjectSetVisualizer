testing
hasMeaningfulAsMorphMethod
	" test whether the 'asMorph' method is defined somewhere else than Object "
	^ ((self target class lookupSelector: #asMorph) classBinding value) ~= Object
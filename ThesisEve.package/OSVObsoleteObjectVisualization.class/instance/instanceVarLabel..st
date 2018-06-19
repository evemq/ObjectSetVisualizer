accessing
instanceVarLabel: anInstVarSymbol
	" return a (multiline) label for instance variable names and values "
	| out |
	out := String new writeStream.
	out
		nextPutAll: anInstVarSymbol;
		nextPutAll: ':';
		nextPutAll: ' ';
		nextPutAll: ((self target instVarNamed: anInstVarSymbol) printString truncateWithElipsisTo: 50).
	^ out contents
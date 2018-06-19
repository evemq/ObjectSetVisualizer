testing
hasPragmas
	" check if this nodes children have pragmas "
	| value |
	value := false. 
	self children do: [ :child | child hasPragmas ifTrue:[ value := true ]].
	^ value
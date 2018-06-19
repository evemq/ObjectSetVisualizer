testing
hasInstanceVariableReferenceTo: anotherObjectVisualization
	" test whether the target has an instance variable referencing the given visualization's target "
	^ (self instanceVariableNameTo: anotherObjectVisualization) isNotNil
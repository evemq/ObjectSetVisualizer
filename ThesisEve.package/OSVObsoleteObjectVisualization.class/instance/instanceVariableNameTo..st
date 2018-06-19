accessing
instanceVariableNameTo: anotherObjectVisualization
	" get the instance variable name referencing the given visualization's target; return nil if there is none "
	| ivs result |
	ivs := self allInstanceVariables.
	result := nil.
	ivs do: [ :iv |
		((self target instVarNamed: iv) == anotherObjectVisualization target) ifTrue: [ result := iv ]
	].
	^ result
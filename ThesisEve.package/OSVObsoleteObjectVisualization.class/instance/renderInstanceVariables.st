rendering
renderInstanceVariables
	| labels text lenght instanceVariables ivShapeBuilder |
	instanceVariables:= self allInstanceVariables. 
	ivShapeBuilder:= self viewer instanceVariableShapeBuilder.
	
	" render the instance variables as individual label shapes "
	labels:= (instanceVariables) collect: [ :var |
		ivShapeBuilder label
			height: 12;
			text: [ :o | self instanceVarLabel: var ].
		ivShapeBuilder shape elementOn: nil ].
	" add correct popup and action for the instanceVariables "
	lenght:= instanceVariables size.
	(1 to: lenght) do: [:i | 
		text := (self target instVarNamed: ((instanceVariables) at: i))asString.
		(labels at: i) @ (self popup: text).
		(labels at: i) when: TRMouseClick do: 
		" this still has a bug returns error at times example #aReference "
			[ self viewer addObject: (self target instVarNamed: ((instanceVariables) at: i)).
			self viewer render ] ].
	^ labels

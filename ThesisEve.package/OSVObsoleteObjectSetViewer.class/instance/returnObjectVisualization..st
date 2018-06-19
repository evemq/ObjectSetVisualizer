utility
returnObjectVisualization: anObject
	" check if the object is in the view and if it is return its objectVisualization, else return nil "	
	self objectVisualizations do: [ :o | o target == anObject ifTrue: [ ^ o ] ].
	^ nil
	
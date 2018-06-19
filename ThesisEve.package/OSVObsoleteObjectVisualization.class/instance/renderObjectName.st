rendering
renderObjectName
	" render a text label of the object name "
	^ (self viewer objectNameShapeBuilder text: [ :o | self target printString ]; yourself) shape elementOn: nil
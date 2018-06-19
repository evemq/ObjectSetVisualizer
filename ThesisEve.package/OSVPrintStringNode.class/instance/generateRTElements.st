as yet unclassified
generateRTElements
	" render a text label of the object name "
	| shape |
	shape := RTShapeBuilder new.
	shape label
		height: 14;
		color:Color black.
	self rtElements: { (shape text: self getText) elementOn: self. }
accessing
boxShapeBuilder
^ boxShapeBuilder ifNil: [
		boxShapeBuilder := RTShapeBuilder new.
		boxShapeBuilder box
			color: Color white;
			borderColor: Color black.
	]
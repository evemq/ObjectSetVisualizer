accessing
boxShapeBuilderNotShared
	" shape for wrapping nodes that are not subelements of another ObjectVisualization "
	^ boxShapeBuilderNotShared ifNil: [
		boxShapeBuilderNotShared := RTShapeBuilder new.
		boxShapeBuilderNotShared box
			color: Color white;
			borderColor: Color black.
	]
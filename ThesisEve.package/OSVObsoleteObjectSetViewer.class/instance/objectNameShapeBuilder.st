shapes
objectNameShapeBuilder
	^ objectNameShape ifNil: [
		objectNameShape := RTShapeBuilder new.
		objectNameShape label
			height: 14;
			color:Color black
	]
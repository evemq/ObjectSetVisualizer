shapes
instanceVariableShapeBuilder
	^ instanceVariableShape ifNil: [
		instanceVariableShape := RTShapeBuilder new.
		instanceVariableShape label
			height: 14;
			text: [ :o | o printString truncateWithElipsisTo: 50 ] ]
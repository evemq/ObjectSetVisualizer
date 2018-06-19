removing
removeObject: anObject
	" remove one individual objectVisualization from the view "
	| ov |
	ov := self returnObjectVisualization: anObject.
	ov ifNotNil:[
		 self objectVisualizations removeAllSuchThat: [ :each | each = ov ] ].
	^ self render
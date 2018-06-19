accessing
boxShapeBuilder
	" define color spectrum on the variable sharedBy/max sharedBy "
	| col maximumNumberOfSharedBy |
	maximumNumberOfSharedBy := (self objectVisualizations collect: [:o | o sharedBy ]) max.
	col := RTMultiLinearColor new.
	col colors: RTPalette c9.
	col command: [ :o | o sharedBy / maximumNumberOfSharedBy ].
	
	" shape for wrapping nodes in a box "
	^ boxShapeBuilder ifNil: [
		boxShapeBuilder := RTShapeBuilder new.
		boxShapeBuilder box
			color: col;
			borderColor: Color black.
	]
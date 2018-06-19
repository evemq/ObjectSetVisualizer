utility
selectElementForOverlayCorrection: anOVCollection
	" find the ObjectVisualization next to which our newly added ObjectVisualization will be placed. If we have a big enough gap we place it there other wise we place it next to the OV furthest to the right "
	| selectedOV |
	anOVCollection size > 0
		ifTrue:[ selectedOV := anOVCollection  at: 1 ] 
		ifFalse:[ selectedOV := self findElementFurthestRight].
	^ selectedOV
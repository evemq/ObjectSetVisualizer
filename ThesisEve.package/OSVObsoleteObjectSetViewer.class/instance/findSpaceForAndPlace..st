utility
findSpaceForAndPlace: anOV
	" find a gap big enough along the x-Axis for our ObjectVisualization and place it there "
	| selectedOV ovsDistanceBiggerThanWidth |
	ovsDistanceBiggerThanWidth := self gapFor: anOV.
	
	selectedOV := self selectElementForOverlayCorrection: ovsDistanceBiggerThanWidth. 
	
	self place: anOV nextTo: selectedOV.

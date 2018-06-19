utility
gapFor: anOV
	" return a list with the elements before a big enough gap for our ObjectVisualization "
	| width  ovsDistanceBiggerThanWidth |
	width := self getElementMeasurements: anOV axis: #x.
	ovsDistanceBiggerThanWidth := OrderedCollection new.
	
	self objectVisualizations do: [ :o | o distanceToNextAlongX > width 
		ifTrue:[ ovsDistanceBiggerThanWidth add: o ] ].
	
	^ ovsDistanceBiggerThanWidth
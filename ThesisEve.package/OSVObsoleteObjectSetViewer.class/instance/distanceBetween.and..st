utility
distanceBetween: anObjectVisualization and: anotherObjectVisualization
	" return the distance between two OV's along the x-Axis if the distance is smaller then 0 we set the distance default to 0, to make calculations easier "
	| frontObjectCorners backObjectCorners distance |
	frontObjectCorners := (self getCorners: anObjectVisualization axis: #x).
	backObjectCorners := (self getCorners: anotherObjectVisualization axis: #x).
	
	(frontObjectCorners y < backObjectCorners x) 
		ifTrue: [ distance := backObjectCorners x - frontObjectCorners y ]
		ifFalse:[ distance := 0 ].
		
	^ distance
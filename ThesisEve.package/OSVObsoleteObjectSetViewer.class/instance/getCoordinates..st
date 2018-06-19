utility
getCoordinates: anOV 
	" get the coordinates of an objectVisualization in the view "
	| xCoord yCoord coordinates |	
		
	xCoord := self getCoord: anOV axis: #x.
	yCoord := self getCoord: anOV axis: #y.
	
	coordinates :=	(xCoord @ yCoord).
	^ coordinates
utility
calculteDistanceToNextObjectAlongX
	" calculate the distance along the x-Axis between ObjectVisualizations and set the variable distanceToNextAlongX "
	| n ovsOrdered distance |
	ovsOrdered := self sortObjectVisualizationsByCoordinates.
	
	n := (ovsOrdered size) - 1.
	(1 to: n) do: [ :i | 
		distance := self distanceBetween: (ovsOrdered at: i)and: (ovsOrdered at: i+1).
		(ovsOrdered at: i) distanceToNextAlongX: distance ]
		
	
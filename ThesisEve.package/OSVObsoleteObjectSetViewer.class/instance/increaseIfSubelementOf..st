utility
increaseIfSubelementOf: anObjectVisualization
	" increase the variable sharedby if the ObjectVisualization is a Subelement of another ObjectVisualization "
	self objectVisualizations 
		do: [ :ov | (anObjectVisualization subElementsOfObject anySatisfy: [ :sub | sub == ov target]) 
			ifTrue: [ ov sharedBy: ov sharedBy+1 ] ]
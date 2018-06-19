removing
removeSubElements: aCollection
	" remove a set of subelements of the ObjectVisualization "
	self viewer removeObjects: aCollection.
	self viewer render
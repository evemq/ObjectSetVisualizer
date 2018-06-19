converting
asObjectVisualization: anObject view: aView
	" Return an object as a ObjectVisualization, without adding it to a view "
	^ (OSVObsoleteObjectVisualization new target: (OSVObsoleteWrappedObject new object: anObject; yourself); viewer: aView; min:false; yourself)

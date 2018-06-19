shapes
buttonRemoveSubstructure: anObject
	" returns a button to remove complete substructures "
	| button substructure |
	substructure := OrderedCollection new.
	
	substructure add: anObject.
	substructure addAll: (self collectSubelementsOf: anObject).
	
	button := OSVObsoleteObjectVisualization new viewer: self;
		button: #remove 
		withPopup: 'Click to remove ',anObject asString, 'and all its subelements' 
		withClickActionViewer: #removeObjects: 
		arguments: { substructure }.
	^ button
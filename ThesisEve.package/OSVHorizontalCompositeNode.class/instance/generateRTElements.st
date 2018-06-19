as yet unclassified
generateRTElements
	| group |
	group := OSVRTGroup new model: OSVDummyNode new; yourself.
	
	self children do: [ :each | group addAll: (each rtElements) ].
	
	RTHorizontalLineLayout new gapSize: 0; on: group.
	
	self rtElements: { group. }
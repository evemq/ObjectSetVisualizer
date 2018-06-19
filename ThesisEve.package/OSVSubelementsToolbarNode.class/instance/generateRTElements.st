as yet unclassified
generateRTElements
	| group |
	
	" group for all horizontal elements "
	group := OSVRTGroup new model: OSVDummyNode new; yourself.
	
	" Add rtElements of child nodes. "
	self children do: [ :each | group addAll: (each rtElements) ].
	
	" line the group elements horizontally "
	RTHorizontalLineLayout new gapSize: 0; on: group.
	self rtElements: { group. }
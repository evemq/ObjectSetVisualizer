as yet unclassified
generateRTElements
	| group |
	
	" group for all horizontal elements of the header "
	group := OSVRTGroup new model: OSVDummyNode new; yourself.
	
	" Add rtElements of child nodes. "
	self children do: [ :each | group addAll: (each rtElements) ].
	
	" line the group elements horizontally "
	RTHorizontalLineLayout new gapSize: 10; on: group.
	
	self rtElements: { group. }
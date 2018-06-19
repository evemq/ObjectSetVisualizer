as yet unclassified
generateRTElements
	| group |

	" group for all elements of the children "
	group := OSVRTGroup new model: OSVDummyNode new; yourself.

	" Add rtElements of child nodes. "
	self children do: [ :each | group addAll: (each rtElements) ].
	
	" remember that rtgroup is polymorphic to rtelement, so it is fine if we return it "
	self rtElements: { group. }
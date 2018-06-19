initialization
setBackSharedByVariable
	" set back the sharedBy variable of all objectVisualizations "
	self objectVisualizations do: [ :o | o sharedBy: 0 ].
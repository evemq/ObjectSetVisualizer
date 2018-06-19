utility
minimizeAll
	" minimize all objectVisualizations "
	self objectVisualizations do: [ :o | o min: true ].
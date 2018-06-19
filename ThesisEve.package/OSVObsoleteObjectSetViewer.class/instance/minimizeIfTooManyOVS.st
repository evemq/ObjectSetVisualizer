utility
minimizeIfTooManyOVS
	" minimze all objectVisualizations if there are more then 20 objectVisualizations in the view "
	(self objectVisualizations size > 20) ifTrue: [ self minimizeAll ]
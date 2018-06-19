menu
collectMissingMoldableView
	" return the classes for which there are no node customizations, so no pragmas "
	| missing |
	missing := OrderedCollection new.
	
	self objectVisualizations do: [ :o | o renderMoldableViews size == 0 
		ifTrue: [ (self collection: missing hasObject: o target class) 
			ifFalse: [ missing add: o target class ] ] ].
	^ missing
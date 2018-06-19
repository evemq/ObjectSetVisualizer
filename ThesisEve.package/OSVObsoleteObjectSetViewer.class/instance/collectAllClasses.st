menu
collectAllClasses
	" return the classes of the objects, which are in the view and in temp "
	| classes |
	classes := OrderedCollection new.
	classes addAll: self collectClassesInTemp.
	self collectClassesInView do: [ :c | classes addIfNotPresent: c ].		
	^ classes


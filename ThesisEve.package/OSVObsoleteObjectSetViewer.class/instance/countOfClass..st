utility
countOfClass: aClass
	" return the number of instances of a class that are in the view "
	| count |
	count := 0.
	self objectVisualizations do:[ : o | o target class == aClass 
		ifTrue: [ count := count + 1 ] ].
	^ count
	
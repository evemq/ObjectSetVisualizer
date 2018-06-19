shapes
buttonShowClassElements: anArgument
	" returns button to add/remove all the instances of a class from the view "
	| button classes class buttons |
	buttons := RTGroup new.
	classes := self collectAllClasses.
	
	classes do:[ :c | (anArgument matches: c asString) ifTrue:[ class := c ] ].
	
	(self objectVisualizations anySatisfy:[ :o | ( o target isMemberOf: class) ]) 
		ifTrue: [ button := self redButtonForInstanceMenu: class ]
		ifFalse:	[ button := self greenButtonForInstanceMenu: class ].
	^ button
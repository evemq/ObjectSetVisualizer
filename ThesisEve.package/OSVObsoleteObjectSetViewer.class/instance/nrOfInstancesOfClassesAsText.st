menu
nrOfInstancesOfClassesAsText
	" return a collection containing a string as follows: 'className : nr of instances of class in view "
	| collectText count |
	collectText := OrderedCollection new.
	
	self collectAllClasses do: [ :c | count := self countOfClass: c. 
		collectText add: (c asString),': ', count asString ].
	
	^ collectText


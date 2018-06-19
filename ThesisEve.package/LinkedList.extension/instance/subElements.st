*ThesisEve
subElements
	<objectSubelements> 
	" Returns subelements of LinkedList which are the elements and the ValueLinks, it is a utility method "
	| subelements links elements |
	subelements := OrderedCollection new. 
	links := OrderedCollection new.
	elements := OrderedCollection new.
	
	elements addAll: self .
	self linksDo: [ :li| links add: li].
	
	subelements add: links.
	subelements add: elements.
	^ subelements
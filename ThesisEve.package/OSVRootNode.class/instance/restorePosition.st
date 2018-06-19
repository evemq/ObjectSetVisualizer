memoization
restorePosition
	(self position = (0@0)) 
		ifFalse: [ self rootElement translateTo: (self position)]
		ifTrue: [ self viewer checkElementOverlay: self ]. 
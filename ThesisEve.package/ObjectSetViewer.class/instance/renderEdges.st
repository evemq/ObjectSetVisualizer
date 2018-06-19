adding
renderEdges
	self generateEdges.
	self edges do: [ :each | each renderOn: self view ]
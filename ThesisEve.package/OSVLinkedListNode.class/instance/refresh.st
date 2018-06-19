refreshing
refresh
	self children removeAll.
	self isMinimized ifTrue: [ self children add: (self chooseNodeType:(self target at: 1)).
		self targetReduced do: [ : each | self children add:(OSVShortenedStringNode on: each viewer: self viewer parent: self)].
		self children add: (self chooseNodeType:(self target at: (self target size)))] 
	ifFalse: [ self target do:[ :each | self children add: (self chooseNodeType: each) ] ] 

	

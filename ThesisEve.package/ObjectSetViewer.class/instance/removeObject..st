removing
removeObject: anObject
	self rootNodes do: [ :each | each target == anObject 
		ifTrue: [ self removeRootNode: each ] ].
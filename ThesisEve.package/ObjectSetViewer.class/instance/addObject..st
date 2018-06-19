adding
addObject: anObject
	| root |
	" check if object is not in view already "
	(self hasObject: anObject) ifFalse: [
		root := OSVRootNode on: anObject viewer: self.
		self addRootNode: root. ]
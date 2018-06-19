as yet unclassified
on: anObject viewer: anOSV parent: aParent
	| instance |
	self assert: (anOSV isKindOf: ObjectSetViewer).
	instance := self new.
	instance
		target: anObject;
		viewer: anOSV;
		parent: aParent;
		refresh.
	^ instance
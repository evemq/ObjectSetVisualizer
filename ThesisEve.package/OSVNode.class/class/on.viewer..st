creation
on: anObject viewer: aViewer
	| instance |
	self assert: (aViewer isKindOf: ObjectSetViewer).
	instance := self new target: anObject; viewer: aViewer; yourself.
	instance refresh.
	^ instance
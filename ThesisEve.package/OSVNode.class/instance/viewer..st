accessing
viewer: anOSV
	self assert: (anOSV isKindOf: ObjectSetViewer).
	viewer := anOSV
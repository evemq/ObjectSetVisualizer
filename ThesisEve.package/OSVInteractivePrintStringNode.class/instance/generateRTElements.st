as yet unclassified
generateRTElements
	" render a text label of the object name "
	| shape |
	shape := OSVRTTrachelShape new.
	shape
		trachelShape: (TRLabelShape new fontSize: 14;
		color:Color black;
		text: self getText);
		model: self;
		yourself.
	shape when: TRMouseClick do: [ self onClick ].
	self rtElements: { shape  }
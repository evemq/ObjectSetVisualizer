as yet unclassified
generateRTElements
	| r |
	r := OrderedCollection new.
	r add: (OSVRTTrachelShape new
		trachelShape: (TRBitmapShape new form: ((BorderedMorph new color: self target) imageForm));
		model: self;
		yourself).
	r do: [ : each | each when: TRMouseClick do: [ self onClick ] ].
	self rtElements: r.
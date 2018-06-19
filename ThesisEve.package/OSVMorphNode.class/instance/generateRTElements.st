as yet unclassified
generateRTElements
	| r |
	r := OrderedCollection new.
	r add: (OSVRTTrachelShape new
		trachelShape: (TRBitmapShape new form: self target asMorph imageForm);
		model: self;
		yourself).
	self rtElements: r
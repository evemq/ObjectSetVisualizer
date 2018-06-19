as yet unclassified
generateRTElements
	| shape |
	shape := (OSVRTTrachelShape new
		trachelShape: (TRBitmapShape new form: 
			(((GLMUIThemeExtraIcons new; glamorousRight) asMorph) imageForm));
		model: self;
		yourself).
	shape when: TRMouseClick do: [ self onClick ].
	self rtElements: { shape }.
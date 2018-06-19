as yet unclassified
generateRTElements
	| shape |
	shape := (OSVRTTrachelShape new
		trachelShape: (TRBitmapShape new form: 
			(((GLMUIThemeExtraIcons new; glamorousCancel) asMorph) imageForm));
		model: self;
		yourself).
	shape @ self popup.
	shape when: TRMouseClick do: [ self onClick ].
	self rtElements: { shape }.
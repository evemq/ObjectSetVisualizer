rendering
generateRTElements
	| shape |
	shape := (OSVRTTrachelShape new
		trachelShape: (TRBitmapShape new form: 
			(((GLMUIThemeExtraIcons new; glamorousInto) asMorph) imageForm));
		model: self;
		yourself).
	shape @ self popup.
	shape when: TRMouseClick do: [ self onClick ].
	self rtElements: { shape }.
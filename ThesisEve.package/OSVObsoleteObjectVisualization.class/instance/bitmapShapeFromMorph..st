shapes
bitmapShapeFromMorph: aMorph
	" get a Trachel shape from the given morph "
	" TODO: we may want to resize this somewhere in order to control overall node size better "
	^ RTElement new
		trachelShape: (TRBitmapShape new form: aMorph imageForm);
		model: nil;
		yourself
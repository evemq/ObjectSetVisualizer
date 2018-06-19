rendering
maximizeButton
	| maximize |
	maximize := GLMUIThemeExtraIcons new; glamorousAdd.
	^ self bitmapShapeFromMorph: maximize asMorph
		
removing
removeButton
	| remove |
	remove := GLMUIThemeExtraIcons new; glamorousCancel.
	^ self bitmapShapeFromMorph: remove asMorph
		
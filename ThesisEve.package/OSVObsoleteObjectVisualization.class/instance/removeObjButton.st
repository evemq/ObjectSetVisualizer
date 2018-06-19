removing
removeObjButton
	| removeObj |
	removeObj := GLMUIThemeExtraIcons new; glamorousRemove.
	^ self bitmapShapeFromMorph: removeObj asMorph
		
utility
checkOverlay: anOV axis: anAxis
	" check wether the newly added  object overlays with another object in the x-axis and return a list 	with the elements that anObject overlaps "
	|  cornersNewElem overlayedElements cornersOldElem |
	overlayedElements := OrderedCollection new.
	" get corners of element that is new in view "
	cornersNewElem := self getCorners: anOV axis: anAxis.
	
	" get corners of the elements that were previously in view and check if the corners of the new element lie between the corner of the old object along the x or y axis "	
	self objectVisualizations do:
		[ :each | each cachedPos 
			ifNotNil: [ cornersOldElem := self getCorners: each axis: anAxis.
				(cornersNewElem x between: cornersOldElem x and: cornersOldElem y)|
				(cornersNewElem y between: cornersOldElem x and: cornersOldElem y) 
					ifTrue: [ overlayedElements add: each ] ] ] .
	^ overlayedElements
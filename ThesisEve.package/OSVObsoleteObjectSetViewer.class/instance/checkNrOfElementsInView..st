utility
checkNrOfElementsInView: aCollection
	" check wether all the elements of aCollection are in the view
	Checkvalues:0:all the elements of this collection are shown in view
				1:no elements of this collection are in the view
				2:Some of the elements in this collection are in the view but not all "
	| elementsOfObjectSize checkvalue elementsNotInViewSize |

	elementsOfObjectSize := aCollection size.
	elementsNotInViewSize := (self elementsNotInView: aCollection) size .
		
	elementsNotInViewSize == 0
		ifTrue: [ checkvalue := 0 ].
		
	elementsNotInViewSize == elementsOfObjectSize
		ifTrue: [ checkvalue := 1 ].
		
	elementsNotInViewSize ~= 0 & (elementsNotInViewSize ~= elementsOfObjectSize)
		ifTrue: [ checkvalue := 2 ].
		
	^ checkvalue
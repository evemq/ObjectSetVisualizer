utility
checkElementOverlay: anOV
	" check wether two objects are overlaying "
	| boolean elementsYAxis elementsXAxis overlayedElements| 
	boolean := false.
	elementsYAxis := (self checkOverlay: anOV axis: #y).
	elementsXAxis := (self checkOverlay: anOV axis: #x).
	
	overlayedElements := (self containsSameElements: elementsYAxis as: elementsXAxis).
	overlayedElements ifNotNil: [ boolean := true ].
	
	^ boolean
	

		
		


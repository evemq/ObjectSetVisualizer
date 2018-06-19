memoization
restorePosition
	" restore the saved positions of moved objects so the view persists. Also the positions of the objects in the initial layout are saved here "
	| node | 
	" restore the elements that have a saved position "
	self objectVisualizations do:
		[ :each |  each cachedPos
			ifNotNil: [ node := each node.	
				node translateTo: each cachedPos ] ].

	" check if none of the elements have a cachedPosition if so it is the initialization of the view, so we want to save all the positions "
	self checkIfInitializationOfView
		ifTrue: [ self initialSavePositions ]
		
	" if not, we check if the newly added element overlays with a element already in the view and correct the overlay if needed "
		ifFalse: [ self checkAndCorrectOverlay ].
	^ view
 
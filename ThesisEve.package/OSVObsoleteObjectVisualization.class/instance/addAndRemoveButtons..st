adding
addAndRemoveButtons: aCollection
	" template for add and remove buttons, which can be used for node customization "
	| buttons rightButton removeButton |
	buttons := RTGroup new. 
	
	rightButton := self 
		button: #right 
		withPopup: (aCollection at: 1) 
		withClickActionSelf: #addSubElements:
		arguments:{ aCollection at: 3 }.
	removeButton := self 
		button: #removeObj 
		withPopup: (aCollection at: 2) 
		withClickActionSelf: #removeSubElements:
		arguments:{ aCollection at: 3 }.
	
	(self viewer checkNrOfElementsInView: (aCollection at: 3)) caseOf: {
		([ 0 ]->[ buttons add: removeButton ]). 
		([ 1 ]->[ buttons add: rightButton ]).
		([ 2 ]->[ buttons add: rightButton; add:removeButton ])}.
	
	^ buttons 
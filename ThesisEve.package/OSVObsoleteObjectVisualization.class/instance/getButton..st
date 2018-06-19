accessing
getButton: aName
	" a library containing different buttons which are RTObjects "
	| button |
	aName caseOf: {
		([ #right ] -> [ button := self rightButton ]). 
		([ #removeObj ] -> [ button := self removeObjButton ]).
		([ #minimize ] -> [ button := self minimizeButton ]).
		([ #maximize ] -> [ button := self maximizeButton ]).
		([ #remove ] -> [ button := self removeButton ]).
		([ #greenCircle ] -> [ button := self greenCircleButton ]).
		([ #redCircle ] -> [ button := self redCircleButton ])}.
	^ button
		
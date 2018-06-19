rendering
renderIndividualContentLabel: anIndividualContentString
	| individualContentLabel |
	" render the individual members of the content collection as a RtGroup, as follows: 
	- content (button if there is one) "
	individualContentLabel := RTGroup new.
	
	individualContentLabel 
			add: (self viewer labelName: ' - ');
			add: (self viewer labelName: anIndividualContentString).
	self button ifNotNil:[
			individualContentLabel add: (self performButtonWithArguments: anIndividualContentString)].
	RTHorizontalLineLayout new gapSize: 0; on: individualContentLabel.
	
 	^ individualContentLabel
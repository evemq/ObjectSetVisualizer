*ThesisEve
instanceVariablesNotToShowInView
	<objectInstanceVariables>
	"Add the instance variables we do not want to show in the view to an OrderedCollection"
	| instanceVariables |
	
	instanceVariables:= OrderedCollection new.
	instanceVariables 
		add: #source;
		add: #selector;
		add: #body.
	
	^ instanceVariables
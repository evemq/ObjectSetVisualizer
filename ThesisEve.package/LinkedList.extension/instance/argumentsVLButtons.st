*ThesisEve
argumentsVLButtons
	"A collection containing information needed for the add and remove buttons for the label"
	| arguments |
	arguments := OrderedCollection new.
	arguments 
		add: 'Click to show all value links'; "Popup for right button"
		add: 'Click to remove all value links'; "Popup for remove button"
		add: (self subElements at: 1). "Subelements to be added/removed"
	^ arguments
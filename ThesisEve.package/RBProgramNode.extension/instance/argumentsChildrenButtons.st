*ThesisEve
argumentsChildrenButtons
	| arguments |
	"A collection containing information needed for the add and remove buttons for the label"
	arguments := OrderedCollection new.
	arguments 
		add: 'Click to show all children'; "Popup for right button"
		add: 'Click to remove all children'; "Popup for remove button"
		add: (self subElements at: 1). "Subelements to be added/removed"
	^ arguments
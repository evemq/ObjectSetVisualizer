*ThesisEve
argumentsElementsButtons
	"A collection containing information needed for the add and remove buttons for the label"
	| arguments |
	arguments := OrderedCollection new.
	arguments 
		add: 'Click to show all the elements of the list'; "Popup for right button"
		add: 'Click to remove all the elements of the list'; "Popup for remove button"
		add: (self subElements at: 2). "Subelements to be added/removed"
	^ arguments
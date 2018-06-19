*ThesisEve
argumentsSubgraphButtons
	| arguments |
	"A collection containing information needed for the add and remove buttons for the label"
	arguments := OrderedCollection new.
	arguments 
		add: 'Click to show the complete subgraph'; "Popup for right button"
		add: 'Click to remove the complete subgraph'; "Popup for remove button"
		add: (self subElements at: 2). "Subelements to be added/removed"
	^ arguments
*ThesisEve
subElements
	<objectSubelements> 
	"Returns subelements of Node which are the children and the subgraph/ast, it is a utility method"
	| subelements children |
	subelements := OrderedCollection new. 
	children := OrderedCollection new.
	
	children addAll: self children.
	
	subelements add: children.
	subelements add: self collectASTElements.
	^ subelements
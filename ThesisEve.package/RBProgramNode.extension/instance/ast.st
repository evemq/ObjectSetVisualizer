*ThesisEve
ast
	"Collects the element of the subgraph/ast of the element, might not be good because added instanceVariable for this"
	^ ast ifNil:[ ast := OrderedCollection new. self collectASTElements ]
*ThesisEve
collectASTElements
	| astElements |
	"Calls recursive function collectASTElements to collect the elements of the objects ast"
	astElements := OrderedCollection new.
	
	astElements addAll:(self children).
	astElements addAll:( self children flatCollect:[ :aNode | aNode collectASTElements]).
	^astElements
	
	


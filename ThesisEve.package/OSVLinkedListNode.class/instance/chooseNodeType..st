as yet unclassified
chooseNodeType: anObject
	| node |
	" check if there is a node customization for the object, otherwise use default OSVPrintStringNode "
	(anObject isKindOf: Color) 
		ifTrue: [ node := (OSVColorMorphNode on: anObject viewer: self viewer parent: self).]
		ifFalse: [ node := (OSVInteractivePrintStringNode on: anObject viewer: self viewer parent: self).].
	^ node
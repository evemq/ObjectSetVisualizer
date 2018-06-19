rendering
subElementsOfObject
	| subele pragmas temp temp2 |
	" collect all <subelement> pragmas "
	subele := OrderedCollection new.
	temp := OrderedCollection new.
	temp2 := OrderedCollection new.
	
	pragmas := self allSubelementPragmas.
	pragmas isNotEmpty 
		ifTrue: [temp addAll: (pragmas collect: [ :pragma | pragma method valueWithReceiver: self 			target arguments: {}]).
			temp do: [ :elem | temp2 addAll: elem]. 
			temp2 do: [ :elem | subele addAll: elem] ].
	^ subele
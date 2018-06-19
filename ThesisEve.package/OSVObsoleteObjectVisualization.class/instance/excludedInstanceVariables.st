rendering
excludedInstanceVariables
	" collect all pragmas which contain the instanceVariables of an object that should not be shown in 	the view "
	| ivsExclude pragmas temp |
	ivsExclude := OrderedCollection new.
	temp := OrderedCollection new.
	
	pragmas := self allInstanceVariablePragmas.
	pragmas isNotEmpty 
		ifTrue: [temp addAll: (pragmas collect: [ :pragma | pragma method valueWithReceiver: self target 			arguments: {}]).
			temp do: [ :elem | ivsExclude addAll: elem ] ].
	^ ivsExclude
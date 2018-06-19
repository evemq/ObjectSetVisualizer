refreshing
refresh
	| pragmas result |
	result := OrderedCollection new.
	pragmas := self allMorphPragmas.
	pragmas isNotEmpty ifTrue: [
	result addAll:( pragmas collect: [ :pragma | (pragma method valueWithReceiver: self target arguments: {})]) ].
	result do: [ : each | self children add: (each viewer: self viewer; parent: self parent)  ].
	self children do: [ :each | each refresh; generateRTElements ].
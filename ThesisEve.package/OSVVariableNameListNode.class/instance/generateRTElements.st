as yet unclassified
generateRTElements
	| elements |
	elements := OrderedCollection new.
	elements addAll: (self children flatCollect: [ :node | node rtElements ]).
	rtElements := elements
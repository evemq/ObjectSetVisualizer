removing
removeObjects: aCollection
	| nodesToRemove |
	nodesToRemove := OrderedCollection new.
	aCollection do: [:each | self rootNodes do: [ :node | node target == each
		ifTrue: [ nodesToRemove add: node ]]].
	nodesToRemove do: [ :removee  | self removeRootNode: removee ].
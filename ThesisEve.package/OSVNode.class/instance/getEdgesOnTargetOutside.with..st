as yet unclassified
getEdgesOnTargetOutside: aTarget with: aBlock
	^ self viewer nodeForTarget: self target ifExists: [ :osvTarget |
		(self root ~= osvTarget) ifTrue: [ aBlock value: osvTarget ] ifFalse: [ OrderedCollection new ]
	] ifNone: [ OrderedCollection new ]
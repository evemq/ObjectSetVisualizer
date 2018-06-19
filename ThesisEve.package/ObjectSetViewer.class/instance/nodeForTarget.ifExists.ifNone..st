as yet unclassified
nodeForTarget: aTarget ifExists: aBlock ifNone: anotherBlock
	^ self rootNodes detect: [ :each | each target == aTarget ] ifFound: aBlock ifNone: anotherBlock
accessing
assertNodeInView: aNode
	self assert: ((self view elements collect: [ :each | each model ]) includes: aNode)
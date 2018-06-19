as yet unclassified
rootShapeFor: aShape
	| parent |
	parent := aShape.
	[ parent parentElement ~= nil ] whileTrue: [ parent := parent parentElement ].
	^ parent
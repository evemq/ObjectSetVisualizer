rendering
refreshEdges
	self objectVisualizations asOrderedCollection allPairsDo: [ :sourceVis :targetVis |
		(sourceVis hasInstanceVariableReferenceTo: targetVis) ifTrue: [
			| var builder |
			var := sourceVis instanceVariableNameTo: targetVis.
			builder := self newEdgeBuilder label: [ :s :t | var ].
			builder connectFrom: sourceVis target to: targetVis target.
		].
	].

	self view elements allPairsDo: [ :s :t |
		| builder |
		(
			(s model isKindOf: OSVObsoleteWrappedObject) and: [
				(t model isKindOf: OSVObsoleteWrappedObject) and: [
					s model object = t model object and: [
						s ~= t ]
					]
				]
			) ifTrue: [
				((s connectedEdges flatCollect: [ :each | { each from. each to. } ]) includes: t) ifFalse: [
					builder := self newEdgeBuilder label: [ :a :b | '=' ].
					builder edgeFrom: s to: t.
				]
		].
	].
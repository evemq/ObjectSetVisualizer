as yet unclassified
generateRTElements
	| shape |
	shape := (RTShapeBuilder new label
				height: 14;
				color: Color black;
				text: ((self value asString)truncateWithElipsisTo: 50)) elementOn: self.
	shape when: TRMouseClick do: [ self onClick ].
	self rtElements: { shape }
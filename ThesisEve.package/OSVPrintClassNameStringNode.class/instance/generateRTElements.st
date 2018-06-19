as yet unclassified
generateRTElements
	" render a text label of the objects class name "
	| shape |
	shape := (RTShapeBuilder new label
				height: 14;
				color: Color black;
				text: (' : ',(self target class)asString)) elementOn: self.
	shape when: TRMouseClick do: [ self onClick ].
	self rtElements: { shape }
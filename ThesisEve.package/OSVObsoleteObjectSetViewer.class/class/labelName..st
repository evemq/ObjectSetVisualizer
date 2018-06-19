utility
labelName: aLabelName
	| label |
	" Render a label in the objectVisualization with the argument as text "
	label := RTShapeBuilder new.
	label label
		height: 12;
		color: Color black;
		text: aLabelName.
	^ label shape elementOn: nil
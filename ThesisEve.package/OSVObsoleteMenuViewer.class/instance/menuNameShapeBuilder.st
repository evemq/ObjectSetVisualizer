rendering
menuNameShapeBuilder
	" return a label with the title as text "
	^	menuNameShape ifNil: [
		menuNameShape := RTShapeBuilder new.
		menuNameShape label
			height: 14;
			color:Color black;
			text:  self title ]
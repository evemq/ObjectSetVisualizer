rendering
renderObjectHeader
	" return the object header "
	| header |
	header := RTGroup new.
	header 
		add: (self renderObjectName);
		add: (self buttonsObjectHeader).
		RTHorizontalLineLayout new gapSize: 15; on: header.
	^ header
rendering
buttonsObjectHeader
	" return buttons for the object header, which are the remove/minimize/maximize buttons "
	| buttons remove minimize maximize |
	buttons := RTGroup new.
	
	remove := self 
		button: #remove 
		withPopup: 'Click to remove object'
		withClickActionViewer: #removeObject: 
		arguments: { self target}.
	minimize := self 
		button: #minimize 
		withPopup: 'Click to minimize Object'
		withClickActionViewer: #minimizeObject: 
		arguments: { self target}.
	maximize := self 
		button: #maximize 
		withPopup: 'Click to maximize Object'
		withClickActionViewer: #maximizeObject: 
		arguments: { self target}.
	
	self min = true ifTrue: [
		buttons 
			add: remove;
			add: maximize ] 
	ifFalse: [
		buttons
			add: remove;
			add: minimize ].
	RTVerticalLineLayout new gapSize: 2; on: buttons.
	^ buttons
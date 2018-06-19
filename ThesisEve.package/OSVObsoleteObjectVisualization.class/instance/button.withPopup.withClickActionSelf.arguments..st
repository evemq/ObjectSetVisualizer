rendering
button: aName withPopup: aText withClickActionSelf: anActionName arguments: anArgumentArray
	" return a button with a popup and call a method within the class ObjectVisualization "
	| button |
	button := (self getButton: aName) @ (self popup: aText).
	
	anActionName ifNotNil:[
	button when: TRMouseClick do: [ self perform: anActionName withArguments:anArgumentArray] ].		
	
	^ button
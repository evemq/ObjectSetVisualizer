rendering
button: aName withPopup: aText withClickActionViewer: anActionName arguments: anArgumentArray
	" return a button with a popup and call a method within the class ObjectVisualization "
	| button |
	button := (self getButton: aName) @ (self popup: aText).
	
	button when: TRMouseClick do: [ self viewer perform: anActionName withArguments:anArgumentArray].		
	
	^ button
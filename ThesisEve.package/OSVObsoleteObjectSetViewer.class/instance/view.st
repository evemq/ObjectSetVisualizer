rendering
view
	" get the RTView, e.g., for use in the playground/inspector "
	^ view ifNil: [
		view := RTView new.
		view @ RTDraggableView.
	]
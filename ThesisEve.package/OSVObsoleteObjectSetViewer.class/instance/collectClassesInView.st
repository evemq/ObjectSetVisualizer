menu
collectClassesInView
	" return the classes of the objects, which are in the view "
	 ^ self objectVisualizations collect: [ :o |  o target class ].


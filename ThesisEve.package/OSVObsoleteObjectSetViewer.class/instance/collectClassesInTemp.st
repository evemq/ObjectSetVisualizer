menu
collectClassesInTemp
	" return the classes of the objects, which are temporary "
	 ^ self tempRemovedObjectVisualizations collect: [ :o |  o target class ].


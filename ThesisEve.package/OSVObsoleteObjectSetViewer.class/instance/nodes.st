graph
nodes
	" these are roassal RTElement instances "
	^ self objectVisualizations collect: [ :each | each node ]
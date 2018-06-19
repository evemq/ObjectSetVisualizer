rendering
checkIfInitializationOfView
	" check wether it is the first time the view is rendered, this is for the purpose of saving the 	object positions initially, that way not creating an error for the method checkAndCorrectOverlay "
	|initialization| 
	initialization := true.
	self objectVisualizations do:
		[ :each | each cachedPos 
			ifNotNil: [ initialization := false ] ].
	^ initialization
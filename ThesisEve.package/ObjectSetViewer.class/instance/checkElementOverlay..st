utility
checkElementOverlay: aRootNode
	| boolean cornersNewRootNode rtShape trShape |
	boolean := false.
	cornersNewRootNode := aRootNode getCorners.
	
	" check wether the given rootNode overlaps with another rootNode in the view "
	self rootNodes do: [ :anOSVRootNode |  anOSVRootNode position = (0@0)
		ifFalse: [ rtShape := anOSVRootNode rootElement.
			trShape := rtShape trachelShape.
			cornersNewRootNode do: [ :corner | (trShape includesPoint: corner) ifTrue: [ boolean := true ] ] ] ].
"Transcript show: aRootNode target; show: boolean."
	^ boolean
*ThesisEve
osvRenderMorphsLinkedList:aView
	<objectRTViewVisualization>
	" Returns an RTGroup for node customization, allowing to add/remove elements of this LinkedList "
	| asOSV groupMorphs morphs arguments |
	groupMorphs := RTGroup new.
	asOSV := OSVObsoleteObjectSetViewer new asObjectVisualization: self view: aView.
	morphs := OrderedCollection new.
	arguments:= self argumentsElementsButtons.
	
	morphs:= self  osvMorphsLinkedList:  aView.
	(morphs size<=5) ifTrue:[
		groupMorphs 
			addAll:morphs;
			addAll: (asOSV addAndRemoveButtons:arguments).
		] ifFalse: [
			groupMorphs
				addAll: ( asOSV morphsReduced: morphs);
				addAll: (asOSV addAndRemoveButtons:arguments) ].
	RTHorizontalLineLayout new gapSize: 2; on: groupMorphs.	
	^ groupMorphs
*ThesisEve
osvRenderLabelValueLinks:aView
	<objectRTViewVisualization>
	" Returns an RTGroup for node customization, allowing to add/remove ValueLinks of this LinkedList "
	| label asOSV arguments |
	label := RTGroup new.
	asOSV := OSVObsoleteObjectSetViewer new asObjectVisualization: self view: aView.
	arguments := self argumentsVLButtons.
	
	label 
		add: (OSVObsoleteObjectSetViewer labelName: 'Show/remove value links of object');
		addAll: (asOSV addAndRemoveButtons:arguments).
					
	RTHorizontalLineLayout new gapSize: 2; on: label.
	^ label
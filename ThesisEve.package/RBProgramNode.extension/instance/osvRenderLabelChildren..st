*ThesisEve
osvRenderLabelChildren: aView
	<objectRTViewVisualization>
	"Returns an RTGroup for node customization, allowing to add/remove children of node"
	| label asOSV arguments |
	label := RTGroup new.
	asOSV := OSVObsoleteObjectSetViewer new asObjectVisualization: self view: aView.
	arguments := self argumentsChildrenButtons.
	
	label 
		add: (aView labelName: 'Show/remove children of object');
		addAll: (asOSV addAndRemoveButtons:arguments).
					
	RTHorizontalLineLayout new gapSize: 2; on: label.
	^ label
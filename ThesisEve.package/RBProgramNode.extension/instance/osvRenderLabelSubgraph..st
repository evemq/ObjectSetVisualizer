*ThesisEve
osvRenderLabelSubgraph: aView
	<objectRTViewVisualization>
	"Returns an RTGroup for node customization, allowing to add/remove subgraph/ast of node"
	| label asOSV arguments |
	label := RTGroup new.
	asOSV := OSVObsoleteObjectSetViewer new asObjectVisualization: self view: aView.
	self ast.
	arguments := self argumentsSubgraphButtons.
	
	label 
		add: (aView labelName: 'Show/remove subgraph of object');
		addAll: (asOSV addAndRemoveButtons:arguments).
					
	RTHorizontalLineLayout new gapSize: 2; on: label.
	^ label
*ThesisEve
osvMorphsLinkedList: aViewer
	"Get Morphs from all elements in LinkedList to be shown in LinkedList element
	Currently still messes up the edges"
	| morphs tempObj test asOSV |
	asOSV := OSVObsoleteObjectSetViewer new asObjectVisualization: self view: aViewer.
	morphs := OrderedCollection new.
	tempObj := self subElements at: 2.
	tempObj do:
			[ :temp | (asOSV viewer hasObject: temp ) 
			ifTrue: [
				"test := ObjectSetViewer new asObjectVisualization: self view: aViewer.
				morphs addAll: test renderMoldableViews."
				"test := ObjectSetViewer new asObjectVisualization: self view: aViewer."
				"test:= ObjectWrapper new object: temp." " 18-01-10 TODO: doesn't seem right/complete here... "
				"morphs addAll: test renderMoldableViews."
				"morphs addAll:(self asObjectVisualization:temp view:nil) renderMoldableViews."
				"morphs add:(self colorAsBitMap:temp)".
				 ] ].		

	^ morphs
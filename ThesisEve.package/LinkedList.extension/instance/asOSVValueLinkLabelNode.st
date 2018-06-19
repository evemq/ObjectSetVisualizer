*ThesisEve
asOSVValueLinkLabelNode
	<OSVAsSubelementsLabel>
	| links |
	links := OrderedCollection new.
	self linksDo: [ :each | links add: each ].
	^ OSVSubelementsLabelNode new
		target: links;
		label:  'Click to add/remove all value links of the linked list '
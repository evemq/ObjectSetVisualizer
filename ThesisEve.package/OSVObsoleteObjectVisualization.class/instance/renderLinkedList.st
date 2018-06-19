rendering
renderLinkedList
	" append the rendered representations if there are corresponding pragmas in the object's class hierarchy "
	| result list |
	result := OrderedCollection new.
	(self target isKindOf: LinkedList) ifFalse: [ ^ OrderedCollection new. ].
	
	list := self target.
	list do: [ :each |
		| shape |
		shape := OSVRTTrachelShape new
			trachelShape: (TRBitmapShape new form: each asMorph imageForm);
			model: (OSVObsoleteWrappedObject new object: each);
			yourself.
		result add: shape.
	].
	
	^ result
utility
returnObjectVisualizations: aCollection
	" check if the objects of a collection are in the view and if they are return their objectVisualizations "
	| collectionObjectVisualizations |
	collectionObjectVisualizations := OrderedCollection new.
	
	self objectVisualizations do:[ :o | aCollection do: [ :c | o target == c 		
		ifTrue:[ collectionObjectVisualizations add: o ] ] ].
	^ collectionObjectVisualizations
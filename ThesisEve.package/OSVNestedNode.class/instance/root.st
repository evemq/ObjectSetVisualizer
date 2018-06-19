accessing
root
	|  node |
	node := self parent.
	[ node isRoot ] whileFalse: [ node := node parent ].
	^ node
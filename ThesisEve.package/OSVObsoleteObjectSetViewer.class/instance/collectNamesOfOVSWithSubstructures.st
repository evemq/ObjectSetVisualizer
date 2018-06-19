utility
collectNamesOfOVSWithSubstructures
	| ovs |
	" collect the names of the objects for which there is a pragma <subElements> "
	ovs := self collectOVSWithSubelements .
	^ ovs collect: [ :ov | ov target ] as: OrderedCollection.
	
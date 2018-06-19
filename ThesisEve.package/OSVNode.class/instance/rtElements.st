accessing
rtElements
	rtElements ifNotNil: [ rtElements do: [ :each | self assert: (each model isKindOf: OSVNode) ].
		rtElements removeAll. 
		self generateRTElements ].
	^ rtElements ifNil: [ self generateRTElements; rtElements ]
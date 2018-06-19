accessing
isMinimized
	^ isMinimized ifNil: [ isMinimized := self tooManyObjects ]
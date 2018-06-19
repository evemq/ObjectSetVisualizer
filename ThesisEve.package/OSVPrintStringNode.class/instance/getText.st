accessing
getText
	| targetStringSize | 
	targetStringSize := ((self target asString)byteSize).
		(targetStringSize > 70) 
			ifTrue: [ ^ ((
				(((self target) asString)truncateWithElipsisTo: 60)
				,'.....'
				",((self target)asString) byteAt: (targetStringSize - 60 )"))] 
		ifFalse: [ ^ (self target)asString ]
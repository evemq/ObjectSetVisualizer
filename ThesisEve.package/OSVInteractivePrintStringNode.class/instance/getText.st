accessing
getText
	| targetStringSize | 
	targetStringSize := ((self target asString)byteSize).
		(targetStringSize > 40) 
			ifTrue: [ ^ ((
				(((self target) asString)truncateWithElipsisTo: 40)
				,'.....'))] 
		ifFalse: [ ^ (self target)asString ]
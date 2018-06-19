accessing
target: aTarget
	self wrappedTarget: (OSVObsoleteWrappedObject new object: aTarget; yourself).
	target := self wrappedTarget object
utility
performButtonWithArguments: aString
	^ (self viewer perform: (self button) withArguments: { aString })
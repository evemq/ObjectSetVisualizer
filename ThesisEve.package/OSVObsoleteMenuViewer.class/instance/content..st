accessing
content: aMethod
	" content is the return value of the given method performed, also we save the method for later content update "
	
	content := self viewer perform: aMethod.
	contentMethod := aMethod
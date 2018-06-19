refreshing
refresh
	self children: (self targetInstanceVariables collect: [ :variable | 
		(OSVHorizontalCompositeNode on:{
		((OSVVariableNameNode on: variable viewer: self viewer parent: self) variable: variable; yourself). 
		((OSVVariableValueNode on: variable viewer: self viewer parent: self) variable: variable; yourself).((OSVSubelementsToolbarNode on: (self root target instVarNamed: variable)asOrderedCollection viewer: self viewer parent: self) yourself) } 
		viewer: self viewer)]).
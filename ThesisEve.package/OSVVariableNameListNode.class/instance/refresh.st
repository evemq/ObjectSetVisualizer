refreshing
refresh
	self children: (self targetInstanceVariables collect: [ :variable | (OSVVariableNameNode on: variable viewer: self viewer parent: self) variable: variable; yourself ]).
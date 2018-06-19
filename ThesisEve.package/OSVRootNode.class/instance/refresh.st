refreshing
refresh
	self children
		removeAll;
		add: (OSVHeaderNode on: self target viewer: self viewer parent: self).
	self isMaximized
		ifTrue: [ 
			self children
				add: (OSVVariableListNode on: self target viewer: self viewer parent: self).
	self children add: (OSVMoldableNode on: self target viewer: self viewer parent: self).].

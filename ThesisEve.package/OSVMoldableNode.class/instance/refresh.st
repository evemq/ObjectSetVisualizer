refreshing
refresh
	self children 
		removeAll;
		add: (OSVMoldableLabelNode on: self target viewer: self viewer parent: self);
		add: (OSVMoldableMorphNode on: self target viewer: self viewer parent: self). 
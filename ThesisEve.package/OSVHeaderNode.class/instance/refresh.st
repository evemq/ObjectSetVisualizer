refreshing
refresh
	self children 
	removeAll;
	add: (OSVPrintStringNode on: self target viewer: self viewer parent: self);
	add: (OSVPrintClassNameStringNode on: self target viewer: self viewer parent: self);
	add: (OSVToolbarNode on: self target viewer: self viewer parent: self).
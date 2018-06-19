refreshing
refresh
	self children removeAll; 
		add: (OSVPrintStringNode on: self label viewer: self viewer parent: self);
		add: (OSVSubelementsToolbarNode on: self target viewer: self viewer parent: self).
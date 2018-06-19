refreshing
refresh
	 self children removeAll;
		addAll: (self target collect:[ :each | each ]).
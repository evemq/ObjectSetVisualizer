refreshing
refresh
	self children
		removeAll.
	self root isMaximized 
		ifTrue: [ self children 
			add: (OSVMinimizeButtonNode on: self target viewer: self viewer parent: self) ]
		ifFalse: [ self children
			add: (OSVMaximizeButtonNode on: self target viewer: self viewer parent: self) ].
	self children add: (OSVCancelButtonNode on: self target viewer: self viewer parent: self).
	self root hasNodeCustomization
		ifFalse: [self children
			add: (OSVAddCustomizationButtonNode on: self target viewer: self viewer parent: self) ].
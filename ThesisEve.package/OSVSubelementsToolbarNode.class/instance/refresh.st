refreshing
refresh
	self children
		removeAll.
	(self viewer allObjectsInView: self target) ifFalse: [
		self children add:(OSVAddButtonNode on: self target viewer: self viewer parent: self)].
	(self viewer noneOfTheObjectsInView: self target)ifFalse: [
	self children add: (OSVRemoveButtonNode on: self target viewer: self viewer parent: self)].
adding
addMenu: aMenu
	| menu |
	" check if menu is not in view already "
	(self hasObject: aMenu) ifFalse: [
		menu := OSVMenuNode on: aMenu viewer: self.
		self addMenuNode: menu. ]
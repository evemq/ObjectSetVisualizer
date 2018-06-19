testing
hasMenu: aMenu
	" test whether I have this menu in the view already "
	^ self menus anySatisfy: [ :each | each title = aMenu ]
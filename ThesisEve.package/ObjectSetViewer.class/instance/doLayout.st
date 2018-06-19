accessing
doLayout
	self layout on: (self rootNodes collect: [ :each | each rootElement ])
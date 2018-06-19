adding
addProtocolOpenBrowserForClass: aClass
	" this method is for adding a protocol called *ThesisEve to a class in order to make the process of creating a node customization/pragma for the ObjectVisualization easier
It also right away opend a Nautilus browser on the newly added protocol
In addition it opens up a playground containing instructions for node customization "
	| pkg env page |
	
	pkg := RPackageOrganizer default packages 
		select: [ :each | each packageName beginsWith: 'Thesis'].
	
	" create a browser environment for the package *ThesisEve "
	env := RBBrowserEnvironment new forPackages: pkg.
	aClass organization protocolOrganizer addProtocolNamed: '*ThesisEve'.
	Nautilus openOnCategory:'*ThesisEve' ofClass: aClass inEnvironment: env.
	
	page := GTPlayPage new 
		content: (self viewer contentInstructionsCustomizeNode: aClass); 
		title: 'Instructions'.
	
	GTPlayground new label: 'Instructions Customize Node' ;openOn: page.

adding
renderNodes
	self rootNodes do: [ :anOSVRootNode | anOSVRootNode refresh.
		self view addAll: anOSVRootNode rtElements ]
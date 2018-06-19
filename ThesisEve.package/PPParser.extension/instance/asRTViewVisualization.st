*ThesisEve
asRTViewVisualization
	<objectRTViewVisualization>
	| view |
	view := RTView new.
	self viewAllParsersOn: RTMondrian new.
	^ view
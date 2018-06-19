as yet unclassified
getExtent
	| rtShape trShape |
	rtShape := self rootElement.
	trShape := rtShape trachelShape.
	^ (trShape width @ trShape height)
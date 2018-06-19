as yet unclassified
getCoordinates
	| rtShape trShape matrix |
	rtShape := self rootElement.
	trShape := rtShape trachelShape.
	matrix := trShape matrix.
	^ (matrix x @ matrix y)
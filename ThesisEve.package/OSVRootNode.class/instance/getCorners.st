as yet unclassified
getCorners
	| corners |
	corners := OrderedCollection new.
	corners 
		add: self position;
		add: ((self position x + self getExtent x) @ self position y);
		add: (self position x @ (self position y + self getExtent y));
		add: ((self position x + self getExtent x) @ (self position y + self getExtent y)).
	^ corners
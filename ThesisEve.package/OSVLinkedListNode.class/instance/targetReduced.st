as yet unclassified
targetReduced
	| targetReduced | 
	targetReduced := OrderedCollection new.
	targetReduced addAll: self target.
	targetReduced 
		removeFirst;
		removeLast.
	^ targetReduced
	
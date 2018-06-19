as yet unclassified
example4
	| osv |
	osv := self new.
	osv addObjects: { osv. osv view. nil. }.
	osv render.
	^ osv
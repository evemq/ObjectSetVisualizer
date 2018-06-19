as yet unclassified
example1
	| osv |
	osv := self new.
	osv addObjects: { osv. osv view. nil. Color blue }.
	osv render.
	^ osv
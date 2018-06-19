as yet unclassified
example2
	| osv |
	osv := self new.
	osv addObject: (CalendarMorph on: Date today).
	osv render.
	^ osv
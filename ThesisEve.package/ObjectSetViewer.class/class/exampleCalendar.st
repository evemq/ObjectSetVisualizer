examples
exampleCalendar
	| osv |
	osv := self new.
	osv addObject: (CalendarMorph on: Date today).
	^ osv
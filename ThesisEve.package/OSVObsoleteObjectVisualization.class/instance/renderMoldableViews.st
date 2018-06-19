rendering
renderMoldableViews
	" append the rendered representations if there are corresponding pragmas in the object's class hierarchy "
	| result pragmas label |
	result := OrderedCollection new.
	label := RTGroup new.
	
	pragmas := self allMorphPragmas.
	pragmas isNotEmpty ifTrue: [
		result addAll: (pragmas collect: [ :pragma |
			| shape |
			shape := self bitmapShapeFromMorph: (pragma method valueWithReceiver: self target arguments: {}).
			shape model: (OSVObsoleteWrappedObject new object: self target; yourself).
		]).
	] ifFalse: [
		(self hasMeaningfulAsMorphMethod) ifTrue: [
			result add: (self bitmapShapeFromMorph: self target asMorph). " 18-01-10 TODO: This seems to mess up some things with edges... Please fix. "
		]
	].

	pragmas := self allRTViewPragmas.
	pragmas isNotEmpty ifTrue: [
		result addAll: (pragmas collect: [ :pragma |
			"result add: ("pragma method valueWithReceiver: self target arguments: {self viewer}")".
		]).
	].
	"Ask why or if the commented part is needed"
					" TODO need a trachel shape here? "
	
	^ result
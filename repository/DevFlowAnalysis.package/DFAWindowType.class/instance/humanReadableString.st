printing
humanReadableString
	^ self class = DFAWindowType
		ifTrue: [ self className allButFirst: 3 ]
		ifFalse: [ self className allButFirst: 5 ]
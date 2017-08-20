cleaning
rejectWindows: aCollection threshold: aDateTime
	^ aCollection reject:
			[ :each | each openTime ifNotNil: [ :time | time > aDateTime ] ifNil: [ false ] ]
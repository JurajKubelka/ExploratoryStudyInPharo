*TranscriptInspector
sessionHeading
	^ self isSessionHeading
			ifFalse: [ self parent sessionHeading ]
			ifTrue: [ self ]
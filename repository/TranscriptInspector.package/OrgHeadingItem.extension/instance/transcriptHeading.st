*TranscriptInspector
transcriptHeading
	^ self isTranscriptHeading
			ifFalse: [ self subheading transcriptHeading ]
			ifTrue: [ self ]
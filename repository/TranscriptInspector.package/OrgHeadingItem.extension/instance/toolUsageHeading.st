*TranscriptInspector
toolUsageHeading
	^ self isToolUsageHeading
			ifFalse: [ self subheading toolUsageHeading ]
			ifTrue: [ self ]
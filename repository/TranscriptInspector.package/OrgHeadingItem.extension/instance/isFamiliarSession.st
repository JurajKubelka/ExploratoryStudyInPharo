*TranscriptInspector
isFamiliarSession
	^ self isSessionHeading and: [ self title includesSubstring: ' familiar ' ]
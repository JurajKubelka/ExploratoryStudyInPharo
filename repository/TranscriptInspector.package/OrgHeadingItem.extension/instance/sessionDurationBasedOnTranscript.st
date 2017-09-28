*TranscriptInspector
sessionDurationBasedOnTranscript
	"Return a Duration based on the last item list and its start time."
	^ self transcriptHeading listItems last start asDuration
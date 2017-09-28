*TranscriptInspector
sessionDurationBasedOnToolUsage
	"Return a Duration based on the last item list and its start time."
	^ self toolUsageHeading listItems last finish asDuration
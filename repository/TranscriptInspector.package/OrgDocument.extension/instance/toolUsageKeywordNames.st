*TranscriptInspector
toolUsageKeywordNames
	"Returns all used Tool Usage keyword names."
	^ (self toolUsageKeywords collect: #contents) asSet asOrderedCollection
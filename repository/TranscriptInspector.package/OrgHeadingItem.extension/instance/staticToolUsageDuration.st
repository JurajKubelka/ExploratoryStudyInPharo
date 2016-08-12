*TranscriptInspector
staticToolUsageDuration
	^ (self toolUsageKeywords select: #isStaticTool thenCollect: #duration) sum.
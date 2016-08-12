*TranscriptInspector
dynamicToolUsageDuration
	^ (self toolUsageKeywords select: #isDynamicTool thenCollect: #duration) sum.
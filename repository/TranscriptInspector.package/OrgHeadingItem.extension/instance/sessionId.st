*TranscriptInspector
sessionId
	^ self tseSessionId ifEmpty: [ self plateauSessionId ifEmpty: [ self initialSessionId ] ]
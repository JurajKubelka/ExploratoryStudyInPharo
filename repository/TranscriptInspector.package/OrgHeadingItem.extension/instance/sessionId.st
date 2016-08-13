*TranscriptInspector
sessionId
	^ self tseSessionId ifEmpty: [ self plateauSessionId ifEmpty: [ self initialSessionId ifEmpty: [ 'X0' ] ] ]
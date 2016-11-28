*TranscriptInspector-AnsweringQuestionsImprovements
gtBrowseExecutionPathAfterClick
	^ self gtExecutionPathAfterClick ifNotNil: [ :compiledMethod |
		compiledMethod browse ]
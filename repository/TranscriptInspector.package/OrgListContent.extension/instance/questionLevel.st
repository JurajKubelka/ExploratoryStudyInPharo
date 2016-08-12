*TranscriptInspector
questionLevel
	^ self parent questionLevel + (self hasDirectGeneralQuestions ifTrue: [ 1 ] ifFalse: [ 0 ])
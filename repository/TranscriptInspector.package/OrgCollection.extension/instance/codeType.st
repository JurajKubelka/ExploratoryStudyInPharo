*TranscriptInspector
codeType
	| codeTypes |
	codeTypes := (self collect: #codeType) asSet.
	codeTypes ifEmpty: [ ^ TRASillitoAll default ].
	codeTypes size > 1 ifTrue: [ ^ TRASillitoAll default ].
	^ codeTypes any
*TranscriptInspector
hasDirectGeneralQuestions
	self lines do: [ :eachLine |
			(eachLine isList not and: [ eachLine generalQuestions notEmpty ])
				ifTrue: [ ^ true ] ].
	^ false
convenience
numberOfQuestions
	questions isEmptyOrNil ifTrue: [ ^ 0 ].
	^ self questions sum: #count
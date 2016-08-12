accessing
questions
	questions ifNil: [ self initializeQuestions ].
	^ questions
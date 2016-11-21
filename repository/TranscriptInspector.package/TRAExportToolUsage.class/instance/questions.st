accessing
questions
	questions ifNil: [ questions := sessions flatCollect: [ :heading | heading generalQuestions ] ].
	^ questions
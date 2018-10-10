accessing
allGeneralSubQuestionsTo: aStream
	self subGeneralQuestions do: [ :eachSubQuestion | 
		aStream nextPut: eachSubQuestion.
		eachSubQuestion allGeneralSubQuestionsTo: aStream ].
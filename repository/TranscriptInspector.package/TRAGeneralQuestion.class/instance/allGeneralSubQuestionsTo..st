accessing
allGeneralSubQuestionsTo: aStream
	self generalOneLevelSubQuestions do: [ :eachSubQuestion | 
		aStream nextPut: eachSubQuestion.
		eachSubQuestion allGeneralSubQuestionsTo: aStream ].
accessing
generalAnyLevelSubQuestions
	^ Array streamContents: [ :aStream | 
		self allGeneralSubQuestionsTo: aStream ]
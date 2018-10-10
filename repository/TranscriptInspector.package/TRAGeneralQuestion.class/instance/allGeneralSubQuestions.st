accessing
allGeneralSubQuestions
	^ Array streamContents: [ :aStream | 
		self allGeneralSubQuestionsTo: aStream ]
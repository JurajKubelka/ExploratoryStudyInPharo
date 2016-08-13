tests
testSubGeneralQuestions
	| questions subQuestions |
	result := scripts parseString: TRAExamples headingAndLists3.
	questions := result rootGeneralQuestions.
	subQuestions := questions first subGeneralQuestions.
	self assert: subQuestions size equals: 1.
	self assert: subQuestions first contents equals: 'General question 3'.
	subQuestions := questions second subGeneralQuestions.
	self assert: subQuestions size equals: 2.
	self assert: subQuestions first contents equals: 'General question 4'.
	self assert: subQuestions second contents equals: 'General question 5'.
	subQuestions := questions third subGeneralQuestions.
	self assert: subQuestions size equals: 0.

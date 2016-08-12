tests
testRootGeneralQuestionNames2
	| questions |
	result := scripts parseString: OrgExamples headingAndLists2.
	questions := result rootGeneralQuestions.
	self assert: questions size equals: 2.
	self assert: questions first contents equals: 'General question'.
	self assert: questions second contents equals: 'General question 2'.

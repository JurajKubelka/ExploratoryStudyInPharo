tests
testRootGeneralQuestionNames
	| questions |
	result := scripts parseString: OrgExamples headingAndLists3.
	questions := result rootGeneralQuestions.
	self assert: questions size equals: 3.
	self assert: questions first contents equals: 'General question'.
	self assert: questions second contents equals: 'General question 2'.
	self assert: questions third contents equals: 'General question 6'.

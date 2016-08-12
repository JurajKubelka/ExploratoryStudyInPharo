tests
testRootGeneralQuestionLevels
	| questions |
	result := scripts parseString: OrgExamples headingAndLists3.
	questions := result rootGeneralQuestions.
	self assert: questions first level equals: 1.
	self assert: questions second level equals: 1.
	self assert: questions third level equals: 1.

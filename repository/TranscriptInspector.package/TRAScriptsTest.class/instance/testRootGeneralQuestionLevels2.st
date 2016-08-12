tests
testRootGeneralQuestionLevels2
	| questions subQuestions |
	result := scripts parseString: OrgExamples headingAndLists3.
	questions := result rootGeneralQuestions.
	subQuestions := questions first subGeneralQuestions.
	self assert: subQuestions first level equals: 2.
	subQuestions := questions second subGeneralQuestions.
	self assert: subQuestions first level equals: 2.
	self assert: subQuestions second level equals: 2.

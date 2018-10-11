tests
testRootGeneralQuestionLevels2
	| questions subQuestions |
	result := scripts parseString: TRAExamples headingAndLists3.
	questions := result rootGeneralQuestions.
	subQuestions := questions first generalOneLevelSubQuestions.
	self assert: subQuestions first level equals: 2.
	subQuestions := questions second generalOneLevelSubQuestions.
	self assert: subQuestions first level equals: 2.
	self assert: subQuestions second level equals: 2.

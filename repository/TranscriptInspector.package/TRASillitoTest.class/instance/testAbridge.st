tests
testAbridge
	| subgroup question |
	self testDivideQuestions.
	sillito := sillito abridge.
	self assert: sillito numberOfQuestions equals: 3.
	self assert: sillito groups first numberOfQuestions equals: 2.
	self assert: sillito groups second numberOfQuestions equals: 0.
	self assert: sillito groups third numberOfQuestions equals: 1.
	self assert: sillito groups fourth numberOfQuestions equals: 0.
	self assert: sillito groups first subgroups first numberOfQuestions equals: 2.
	self assert: sillito groups first subgroups first questions size equals: 1.
	subgroup := sillito groups first subgroups first.
	question := subgroup questions first.
	self assert: question subgroup equals: subgroup.
	self assert: question questions size equals: 2.
	self assert: question questions first subgroup equals: question.
	self assert: question questions second subgroup equals: question.
	
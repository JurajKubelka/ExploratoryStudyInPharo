asserting
assertSillitoAbridge: aSillito
	| subgroup question |
	self assert: aSillito numberOfQuestions equals: 3.
	self assert: aSillito groups first numberOfQuestions equals: 2.
	self assert: aSillito groups second numberOfQuestions equals: 0.
	self assert: aSillito groups third numberOfQuestions equals: 1.
	self assert: aSillito groups fourth numberOfQuestions equals: 0.
	self assert: aSillito groups first subgroups first numberOfQuestions equals: 2.
	self assert: aSillito groups first subgroups first questions size equals: 1.
	subgroup := aSillito groups first subgroups first.
	question := subgroup questions first.
	self assert: question subgroup equals: subgroup.
	self assert: question questions size equals: 2.
	self assert: question questions first subgroup equals: question.
	self assert: question questions second subgroup equals: question.

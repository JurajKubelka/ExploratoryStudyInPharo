asserting
assertDivideQuestions: aSillito
	| subgroup |
	self assert: aSillito numberOfQuestions equals: 3.
	self assert: aSillito groups first numberOfQuestions equals: 2.
	self assert: aSillito groups second numberOfQuestions equals: 0.
	self assert: aSillito groups third numberOfQuestions equals: 1.
	self assert: aSillito groups fourth numberOfQuestions equals: 0.
	self assert: aSillito groups first subgroups first questions size equals: 2.
	subgroup := aSillito groups first subgroups first.
	self assert: subgroup questions first subgroup equals: subgroup.
	self assert: subgroup questions second subgroup equals: subgroup.

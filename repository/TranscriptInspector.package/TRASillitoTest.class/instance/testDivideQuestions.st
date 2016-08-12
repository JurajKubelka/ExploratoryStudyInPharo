tests
testDivideQuestions
	| questions subgroup |
	self testUnfamiliar.
	questions := { TRAShortGeneralQuestion new contents: '4'; yourself.
						TRAShortGeneralQuestion new contents: '27'; yourself.
						TRAShortGeneralQuestion new contents: '4'; yourself.  }.
	sillito := TRASillito unfamiliar.
	sillito divideQuestions: questions.
	self assert: sillito numberOfQuestions equals: 3.
	self assert: sillito groups first numberOfQuestions equals: 2.
	self assert: sillito groups second numberOfQuestions equals: 0.
	self assert: sillito groups third numberOfQuestions equals: 1.
	self assert: sillito groups fourth numberOfQuestions equals: 0.
	self assert: sillito groups first subgroups first questions size equals: 2.
	subgroup := sillito groups first subgroups first.
	self assert: subgroup questions first subgroup equals: subgroup.
	self assert: subgroup questions second subgroup equals: subgroup.

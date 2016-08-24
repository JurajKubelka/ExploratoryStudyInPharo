tests
testDivideQuestions
	| questions |
	self testUnfamiliar.
	questions := { TRAShortGeneralQuestion new contents: '4'; yourself.
						TRAShortGeneralQuestion new contents: '27'; yourself.
						TRAShortGeneralQuestion new contents: '4'; yourself.  }.
	sillito := TRASillito unfamiliar.
	sillito divideQuestions: questions.
	self assertDivideQuestions: sillito.

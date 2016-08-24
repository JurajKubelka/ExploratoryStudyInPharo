tests
testDivideQuestions2
	| sillito2 |
	self testDivideQuestions.
	sillito2 := TRASillito unfamiliar.
	sillito2 divideQuestions: sillito questions.
	self assertDivideQuestions: sillito.
	self assertDivideQuestions: sillito2.
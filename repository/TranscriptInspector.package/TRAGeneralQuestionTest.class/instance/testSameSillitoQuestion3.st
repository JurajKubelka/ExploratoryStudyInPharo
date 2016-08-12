tests
testSameSillitoQuestion3
	q1 := TRALongGeneralQuestion new contents: '(27) question 1'; yourself.
	q2 := TRAShortGeneralQuestion new contents: '27'; yourself.
	self assert: (q1 sameSillitoQuestion: q2)
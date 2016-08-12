tests
testSameSillitoQuestion7
	q1 := TRAShortGeneralQuestion new contents: '27'; yourself.
	q2 := TRALongGeneralQuestion new contents: '(27) question 1'; yourself.
	self assert: (q1 sameSillitoQuestion: q2)
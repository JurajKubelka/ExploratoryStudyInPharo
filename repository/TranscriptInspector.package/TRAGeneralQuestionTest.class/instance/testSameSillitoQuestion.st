tests
testSameSillitoQuestion
	q1 := TRALongGeneralQuestion new contents: '(27) question 1'; yourself.
	q2 := TRALongGeneralQuestion new contents: '(27) question 2'; yourself.
	self assert: (q1 sameSillitoQuestion: q2).
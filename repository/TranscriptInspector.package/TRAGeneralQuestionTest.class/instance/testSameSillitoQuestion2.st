tests
testSameSillitoQuestion2
	q1 := TRALongGeneralQuestion new contents: '(27) question 1'; yourself.
	q2 := TRALongGeneralQuestion new contents: '(28) question 1'; yourself.
	self deny: (q1 sameSillitoQuestion: q2).
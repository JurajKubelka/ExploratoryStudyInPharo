tests
testSameSillitoQuestion6
	q1 := TRAShortGeneralQuestion new contents: '27'; yourself.
	q2 := TRAShortGeneralQuestion new contents: '28'; yourself.
	self deny: (q1 sameSillitoQuestion: q2)
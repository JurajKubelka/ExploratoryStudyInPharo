tests
testSameSillitoQuestion5
	q1 := TRAShortGeneralQuestion new contents: '28'; yourself.
	q2 := TRAShortGeneralQuestion new contents: '28'; yourself.
	self assert: (q1 sameSillitoQuestion: q2)
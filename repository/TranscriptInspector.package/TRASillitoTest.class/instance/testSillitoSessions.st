tests
testSillitoSessions
	| sessions |
	sessions := TRASillito unfamiliar sillitoSessions.
	self assert: sessions size equals: 12.
	self assert: sessions first numberOfQuestions equals: 27.
	self assert: sessions third numberOfQuestions equals: 15.
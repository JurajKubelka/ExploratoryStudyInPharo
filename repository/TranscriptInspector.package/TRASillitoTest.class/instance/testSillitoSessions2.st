tests
testSillitoSessions2
	| sessions |
	sessions := TRASillito familiar sillitoSessions.
	self assert: sessions size equals: 15.
	self assert: sessions first numberOfQuestions equals: 10.
	self assert: sessions sixth numberOfQuestions equals: 5.
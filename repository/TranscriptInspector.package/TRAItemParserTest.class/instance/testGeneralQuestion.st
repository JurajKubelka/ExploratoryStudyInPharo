tests - general question
testGeneralQuestion
	super testGeneralQuestion.
	self assert: result isGeneralQuestion.
	self assert: result contents equals: 'Who''s John?'.
	self assertText.
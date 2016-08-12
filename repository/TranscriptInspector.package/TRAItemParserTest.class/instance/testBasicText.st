tests - basic text
testBasicText
	super testBasicText.
	self assert: result isSentence.
	self assertText.
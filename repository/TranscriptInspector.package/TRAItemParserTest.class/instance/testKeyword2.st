tests - keyword
testKeyword2
	super testKeyword2.
	self assert: result isKeyword.
	self assert: result contents equals: 'fix'.
	self assertText.
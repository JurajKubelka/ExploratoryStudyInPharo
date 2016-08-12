tests - keyword
testKeyword
	super testKeyword.
	self assert: result isKeyword.
	self assert: result contents equals: 'important'.
	self assertText.
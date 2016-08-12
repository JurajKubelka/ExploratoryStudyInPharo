tests - item
testItem3
	super testItem3.
	self assert: result isItem.
	self assert: result start minutes equals: 10.
	self assert: result start seconds equals: 34.
	self assert: result finish minutes equals: 10.
	self assert: result finish seconds equals: 34.
	self assert: result duration minutes equals: 0.
	self assert: result duration seconds equals: 0.
	self assert: result parts size equals: 4.
	self assert: result parts first isSentence.
	self assert: result parts second isSpecificQuestion.
	self assert: result parts third isGeneralQuestion.
	self assert: result parts fourth isSentence.
	self assertText.
	
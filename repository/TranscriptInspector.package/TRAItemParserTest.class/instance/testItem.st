tests - item
testItem
	super testItem.
	self assert: result isItem.
	self assert: result start minutes equals: 10.
	self assert: result start seconds equals: 34.
	self assert: result parts size equals: 1.
	self assert: result parts first isSentence.
	self assert: result parts first text equals: 'A'.
	self assertText.
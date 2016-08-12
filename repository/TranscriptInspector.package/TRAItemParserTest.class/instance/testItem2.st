tests - item
testItem2
	super testItem2.
	self assert: result isItem.
	self assert: result start minutes equals: 10.
	self assert: result start seconds equals: 34.
	self assert: result finish minutes equals: 11.
	self assert: result finish seconds equals: 45.
	self assert: result duration minutes equals: 1.
	self assert: result duration seconds equals: 11.
	self assert: result parts size equals: 1.
	self assert: result parts first isSentence.
	self assert: result parts first text equals: 'A '.
	self assertText.
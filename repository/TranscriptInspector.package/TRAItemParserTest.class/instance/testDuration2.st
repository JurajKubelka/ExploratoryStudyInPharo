tests - parts
testDuration2
	super testDuration2.
	self assert: result start minutes equals: 53.
	self assert: result start seconds equals: 26.
	self assert: result next start hours equals: 1.
	self assert: result next start minutes equals: 4.
	self assert: result next start seconds equals: 41.
	self assert: result duration minutes equals: 11.
	self assert: result duration seconds equals: 15.
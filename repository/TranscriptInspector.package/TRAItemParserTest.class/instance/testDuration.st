tests - parts
testDuration
	super testDuration.
	self assert: result start minutes equals: 16.
	self assert: result start seconds equals: 23.
	self assert: result next start minutes equals: 18.
	self assert: result next start seconds equals: 33.
	self assert: result duration minutes equals: 2.
	self assert: result duration seconds equals: 10.
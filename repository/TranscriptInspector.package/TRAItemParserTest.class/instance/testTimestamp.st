tests - parts
testTimestamp
	super testTimestamp.
	self assert: result start minutes equals: 16.
	self assert: result start seconds equals: 23.
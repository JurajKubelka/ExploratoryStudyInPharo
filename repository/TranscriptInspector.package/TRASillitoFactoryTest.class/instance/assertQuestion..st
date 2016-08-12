asserting
assertQuestion: aCollection 
	| unfamiliar familiar |
	self assert: aCollection size equals: 31.
	unfamiliar := aCollection copyFrom: 5 to: 16.
	familiar := aCollection copyFrom: 17 to: 31.
	self assert: (aCollection at: 3) equals: unfamiliar sum.
	self assert: (aCollection at: 4) equals: familiar sum.
	
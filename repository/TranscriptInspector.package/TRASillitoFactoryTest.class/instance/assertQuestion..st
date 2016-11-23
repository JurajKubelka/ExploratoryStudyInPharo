asserting
assertQuestion: aCollection 
	| unfamiliar familiar |
	self assert: aCollection size equals: 32.
	unfamiliar := aCollection copyFrom: 6 to: 17.
	familiar := aCollection copyFrom: 18 to: 32.
	self assert: (aCollection at: 4) equals: unfamiliar sum.
	self assert: (aCollection at: 5) equals: familiar sum.
	
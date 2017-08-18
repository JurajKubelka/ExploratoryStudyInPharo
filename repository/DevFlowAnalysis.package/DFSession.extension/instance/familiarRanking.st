*DevFlowAnalysis
familiarRanking
	self title isSessionHeading ifTrue: [ ^ self title familiarRatio  ].
	^ DFAScripts uniqueInstance familiarRankingAt: self id.
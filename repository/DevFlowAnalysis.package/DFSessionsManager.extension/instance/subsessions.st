*DevFlowAnalysis
subsessions
	^ self sessions flatCollect: [ :eachSession | eachSession subsessions ]
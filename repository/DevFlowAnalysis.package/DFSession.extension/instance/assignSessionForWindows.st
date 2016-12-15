*DevFlowAnalysis
assignSessionForWindows
	self windows do: [ :eachWindow | eachWindow attributes at: #session put: self ].
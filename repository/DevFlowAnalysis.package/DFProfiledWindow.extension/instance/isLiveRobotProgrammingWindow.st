*DevFlowAnalysis
isLiveRobotProgrammingWindow
	^ (self windowClass = DFWindowClassMapper tSpecWindow) 
			and: [ self label = 'Live Robot Programming UI' ]
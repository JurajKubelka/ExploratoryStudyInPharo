*DevFlowAnalysis
isTimeProfilerWindow
	^ (self windowClass = DFWindowClassMapper tStandardWindow) 
			and: [ self label = 'Time profiler' ]
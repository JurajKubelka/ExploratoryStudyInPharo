*DevFlowAnalysis
isSpecChangesBrowser

	^ (self windowClass = DFWindowClassMapper tSpecWindow) 
			and: [ self label = 'Changes Browser' ]
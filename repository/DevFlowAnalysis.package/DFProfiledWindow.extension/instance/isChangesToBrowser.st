*DevFlowAnalysis
isChangesToBrowser

	^ (self windowClass = DFWindowClassMapper tStandardWindow) 
			and: [ self label beginsWith: 'Changes to ' ]
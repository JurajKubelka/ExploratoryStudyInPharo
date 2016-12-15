*DevFlowAnalysis
isProcessBrowser

	^ (self windowClass = DFWindowClassMapper tSystemWindow) 
			and: [ self label = 'Process Browser' ]
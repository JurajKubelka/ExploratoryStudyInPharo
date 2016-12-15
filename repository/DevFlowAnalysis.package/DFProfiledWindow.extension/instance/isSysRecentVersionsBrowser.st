*DevFlowAnalysis
isSysRecentVersionsBrowser

	^ (self windowClass = DFWindowClassMapper tSystemWindow) 
			and: [ self label beginsWith: 'Recent versions of' ]
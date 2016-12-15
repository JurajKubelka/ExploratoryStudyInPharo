*DevFlowAnalysis
isNewProtocolDialog

	^ (self windowClass = DFWindowClassMapper tListDialogWindow) 
			and: [ self label = 'New Protocol' ]
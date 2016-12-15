*DevFlowAnalysis
isMCServerUserCredentials

	^ (self windowClass = DFWindowClassMapper tTextEntryDialogWindow) 
			and: [ self label beginsWith: 'User' ]
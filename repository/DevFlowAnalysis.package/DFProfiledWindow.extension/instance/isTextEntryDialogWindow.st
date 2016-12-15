*DevFlowAnalysis
isTextEntryDialogWindow

	^ (self windowClass = DFWindowClassMapper tTextEntryDialogWindow) 
			and: [ self label beginsWith: 'Provide the following information' ]
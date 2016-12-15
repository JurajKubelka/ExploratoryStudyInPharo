*DevFlowAnalysis
isClassSearchDialog

	^ (self windowClass = DFWindowClassMapper tListDialogWindow) 
			and: [ self label beginsWith: 'Class search' ]
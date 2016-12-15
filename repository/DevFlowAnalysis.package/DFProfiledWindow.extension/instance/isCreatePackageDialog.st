*DevFlowAnalysis
isCreatePackageDialog

	^ (self windowClass = DFWindowClassMapper tTextEntryDialogWindow) 
			and: [ self label = 'Create a new package' ]
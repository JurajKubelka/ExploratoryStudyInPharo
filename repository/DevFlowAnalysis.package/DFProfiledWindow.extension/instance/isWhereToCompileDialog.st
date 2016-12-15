*DevFlowAnalysis
isWhereToCompileDialog
	^ (self windowClass = DFWindowClassMapper tPopupChoiceDialogWindow) 
			and: [ self label = 'Where do you want to compile this trait method?' ]
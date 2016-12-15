*DevFlowAnalysis
isRemoveMessageConfirmationDialog

	^ (self windowClass = DFWindowClassMapper tPopupChoiceDialogWindow) 
			and: [ 'The message #* has * sender*' match: self label ]
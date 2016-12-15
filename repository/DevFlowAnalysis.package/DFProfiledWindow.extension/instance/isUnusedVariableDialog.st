*DevFlowAnalysis
isUnusedVariableDialog

	^ (self windowClass = DFWindowClassMapper tPopupChoiceDialogWindow) 
			and: [ '* appears to be unused in this method. OK to remove it?' match: self label ]
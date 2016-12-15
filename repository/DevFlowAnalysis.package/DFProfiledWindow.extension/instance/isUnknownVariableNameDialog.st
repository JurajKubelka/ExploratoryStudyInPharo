*DevFlowAnalysis
isUnknownVariableNameDialog

	^ (self windowClass = DFWindowClassMapper tPopupChoiceDialogWindow) 
			and: [ self label beginsWith: 'Unknown variable: ' ]
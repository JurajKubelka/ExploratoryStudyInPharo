*DevFlowAnalysis
isUnknownSelectorDialog

	^ (self windowClass = DFWindowClassMapper tPopupChoiceDialogWindow) 
			and: [ self label beginsWith: 'Unknown selector, please' ]
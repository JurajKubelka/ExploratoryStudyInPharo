*DevFlowAnalysis
isChoiceDialog
	"Likely Refactoring dialog for selecting instance variables, etc."
	^ (self windowClass = DFWindowClassMapper tPopupChoiceDialogWindow) 
			and: [ self label = 'Choose' ]
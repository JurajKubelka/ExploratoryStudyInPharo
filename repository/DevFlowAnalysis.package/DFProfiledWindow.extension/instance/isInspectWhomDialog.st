*DevFlowAnalysis
isInspectWhomDialog
	"Appears when user uses halos and says inspect morph. Then it asks which (sub)-morph to inspect."
	^ (self windowClass = DFWindowClassMapper tPopupChoiceDialogWindow) 
			and: [ self label = 'inspect whom? (deepest at top)' ]
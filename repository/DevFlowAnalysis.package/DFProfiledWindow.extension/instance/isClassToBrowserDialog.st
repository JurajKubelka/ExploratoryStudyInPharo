*DevFlowAnalysis
isClassToBrowserDialog
	"Appears when user writes a wrong class name and ask for browsing it."
	^ (self windowClass = DFWindowClassMapper tPopupChoiceDialogWindow) 
			and: [ self label = 'choose a class to browse...' ]
*DevFlowAnalysis
isCustomQuestionDialogWindow
	"Likely discard or accept code changes dialog"
	^ (self windowClass = DFWindowClassMapper tCustomQuestionDialogWindow) 
			and: [ self label = 'Question' ]
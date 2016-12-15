*DevFlowAnalysis
isQuestionWithoutCancelDialogWindow

	^ (self windowClass = DFWindowClassMapper tQuestionWithoutCancelDialogWindow) 
			and: [ self label beginsWith: 'Question' ]
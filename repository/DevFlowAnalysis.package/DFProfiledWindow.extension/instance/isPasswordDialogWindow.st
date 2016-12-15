*DevFlowAnalysis
isPasswordDialogWindow

	^ (self windowClass = DFWindowClassMapper tPasswordDialogWindow) 
			and: [ self label = 'Password Required' ]
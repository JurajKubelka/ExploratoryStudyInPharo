*DevFlowAnalysis
isMethodNameEditor

	^ (self windowClass = DFWindowClassMapper tMethodNameEditor) 
			and: [ self label = 'Method Name' ]
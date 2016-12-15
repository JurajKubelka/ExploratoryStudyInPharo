*DevFlowAnalysis
isMCSaveVersionDialog

	^ (self windowClass = DFWindowClassMapper tSystemWindow) 
			and: [ self label beginsWith: 'Edit Version Name and Log Message:' ]
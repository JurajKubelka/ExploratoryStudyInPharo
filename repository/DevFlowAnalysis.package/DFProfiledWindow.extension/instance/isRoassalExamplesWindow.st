*DevFlowAnalysis
isRoassalExamplesWindow
	^ (self windowClass = DFWindowClassMapper tGLMSystemWindow) 
			and: [ self label = 'Roassal examples browser' ]
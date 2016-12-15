*DevFlowAnalysis
isGlamorousBrowser
	"Is Glamorous Example Browser"
	^ (self windowClass = DFWindowClassMapper tGLMSystemWindow) 
			and: [ self label = 'Glamorous Browser' ]
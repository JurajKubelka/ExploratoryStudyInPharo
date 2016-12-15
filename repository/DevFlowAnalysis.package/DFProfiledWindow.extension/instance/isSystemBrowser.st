*DevFlowAnalysis
isSystemBrowser
	"An old code browser: Browser open."
	^ (self windowClass = DFWindowClassMapper tSystemWindow) 
			and: [ self label = 'System Browser' ]
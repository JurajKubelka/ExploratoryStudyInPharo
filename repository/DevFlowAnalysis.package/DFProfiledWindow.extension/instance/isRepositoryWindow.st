*DevFlowAnalysis
isRepositoryWindow
	"The window that displays packages and versions of a repository."
	^ (self windowClass = DFWindowClassMapper tSystemWindow) 
			and: [ self label beginsWith: 'Repository: ' ]
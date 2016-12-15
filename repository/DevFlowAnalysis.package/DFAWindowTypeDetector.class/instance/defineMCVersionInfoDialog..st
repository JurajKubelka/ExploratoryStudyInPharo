private
defineMCVersionInfoDialog: aDFProfiledWindow 
	aDFProfiledWindow isMCVersionInfoDialog 
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTMCVersionInfoDialog default ].
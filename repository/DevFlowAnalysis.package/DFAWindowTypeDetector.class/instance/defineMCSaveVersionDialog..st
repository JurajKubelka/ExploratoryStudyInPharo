private
defineMCSaveVersionDialog: aDFProfiledWindow 
	aDFProfiledWindow isMCSaveVersionDialog 
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTMCSaveVersionDialog default ].
private
defineWorkspace: aDFProfiledWindow 
	aDFProfiledWindow isOldWorkspace ifTrue: [ self define: aDFProfiledWindow as: DFAWTOldWorkspace default ]. 
	aDFProfiledWindow isGTPlayground ifTrue: [ self define: aDFProfiledWindow as: DFAWTPlayground default ].
private
defineMCServerUserCredentials: aDFProfiledWindow 
	aDFProfiledWindow isMCServerUserCredentials 
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTMCServerUserCredentials default ].
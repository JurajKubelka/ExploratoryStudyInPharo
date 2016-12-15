private
defineMCServerPasswordCredentials: aDFProfiledWindow 
	aDFProfiledWindow isPasswordDialogWindow 
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTMCServerPasswordCredentials default ].
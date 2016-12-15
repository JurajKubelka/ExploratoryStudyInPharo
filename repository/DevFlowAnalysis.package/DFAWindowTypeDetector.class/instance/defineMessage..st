private
defineMessage: aDFProfiledWindow 
	aDFProfiledWindow isSenderImplementorBrowser ifTrue: [ self define: aDFProfiledWindow as: DFAWTMessageBrowser default ]
private
defineNautilus: aDFProfiledWindow 
	aDFProfiledWindow isCodeBrowser 
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTNautilus default ].
	aDFProfiledWindow isNautilusPluginManager 
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTNautilusPluginManager default ].
	aDFProfiledWindow isSystemBrowser 
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTSystemBrowser default ].

private
defineDebugger: aDFProfiledWindow 
	aDFProfiledWindow isRealDebugger ifTrue: [ ^ self define: aDFProfiledWindow as: DFAWTSpecDebugger default ].
	aDFProfiledWindow isPreDebugger ifTrue: [ ^ self define: aDFProfiledWindow as: DFAWTPreDebugger default ].
	
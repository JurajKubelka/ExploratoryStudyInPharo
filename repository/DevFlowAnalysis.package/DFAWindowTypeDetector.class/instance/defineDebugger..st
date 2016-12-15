private
defineDebugger: aDFProfiledWindow 
	aDFProfiledWindow isDebugger ifTrue: [ ^ self define: aDFProfiledWindow as: DFAWTSpecDebugger default ]
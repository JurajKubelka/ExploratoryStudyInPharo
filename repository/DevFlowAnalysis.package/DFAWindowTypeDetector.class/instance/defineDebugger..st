private
defineDebugger: aDFProfiledWindow 
	aDFProfiledWindow label = 'Debug it' ifTrue: [ ^ self define: aDFProfiledWindow as: DFAWTSpecDebugger default ].
	aDFProfiledWindow isRealDebugger ifTrue: [ ^ self define: aDFProfiledWindow as: DFAWTSpecDebugger default ].
	aDFProfiledWindow isPreDebugger ifTrue: [ ^ self define: aDFProfiledWindow as: DFAWTPreDebugger default ].
	
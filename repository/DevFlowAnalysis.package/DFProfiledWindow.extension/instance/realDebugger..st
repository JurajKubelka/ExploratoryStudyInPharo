*DevFlowAnalysis
realDebugger: aDFProfiledWindow 
	"Set real-debugger window instance that is followed after this pre-debugger window."
	self assert: [ self isPreDebugger ].
	self assert: [ aDFProfiledWindow isRealDebugger ].
	self attributes at: #realDebugger put: aDFProfiledWindow
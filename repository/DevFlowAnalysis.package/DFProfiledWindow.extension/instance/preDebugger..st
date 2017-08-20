*DevFlowAnalysis
preDebugger: aDFProfiledWindow 
	"Set pre-debugger window instance that is displayed before this real-debugger window."
	self assert: [ self isRealDebugger ].
	self assert: [ aDFProfiledWindow isPreDebugger ].
	self attributes at: #preDebugger put: aDFProfiledWindow
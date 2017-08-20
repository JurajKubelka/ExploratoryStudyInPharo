*DevFlowAnalysis
preDebugger
	"Get pre-debugger window instance that is displayed before this real-debugger window."
	^ self attributes at: #preDebugger ifAbsent: nil
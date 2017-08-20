*DevFlowAnalysis
realDebugger
	"Get real-debugger window instance that is followed after this pre-debugger window."
	^ self attributes at: #realDebugger ifAbsent: nil
utility
linkPreDebugger: preDebuggerWindow withRealDebugger: realDebuggerWindow
	"Link two debugger windows as the pre-debugger is followed by the real-debugger.
	It means that a user open the real debugger by clicking 'debug' on the pre-debugger." 
	preDebuggerWindow realDebugger: realDebuggerWindow.
	realDebuggerWindow preDebugger: preDebuggerWindow.
	
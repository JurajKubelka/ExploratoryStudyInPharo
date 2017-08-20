testing
isPreDebugger: preDebugger followedByRealDebugger: realDebugger 
	"Return true if the pre-debugger window is followed by the real-debugger window.
	We use threshold of 1 second as:
		with 0.5 second threshold we have 24 pre-debuggers,
		with 1 second threshold we have 28 pre-debuggers,
		with 2-5 seconds threshold we have 28 pre-debuggers.
	"
	| diff |
	diff := realDebugger openTime - preDebugger closeTime.
	^ diff >= 0 seconds and: [ diff < 1 seconds ]
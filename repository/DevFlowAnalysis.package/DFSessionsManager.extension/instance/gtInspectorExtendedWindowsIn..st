*DevFlowAnalysis
gtInspectorExtendedWindowsIn: composite
	<gtInspectorPresentationOrder: -9>  
	^ DFAInspectorExtensions uniqueInstance 
		gtInspectorExtendedWindowsIn: composite using: [ self windows ]
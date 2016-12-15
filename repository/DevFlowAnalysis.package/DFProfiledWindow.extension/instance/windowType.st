*DevFlowAnalysis
windowType
	^ self attributes at: #windowType ifAbsent: [ DFAWindowType default ]
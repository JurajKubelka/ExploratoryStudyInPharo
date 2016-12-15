*DevFlowAnalysis
isSystemWindowInspector

	^ (self windowClass = DFWindowClassMapper tSystemWindow) 
			and: [ self label beginsWith: 'ByteString [' ]
*DevFlowAnalysis
videoStartTime
	^ (DFAScripts uniqueInstance videoStartTimeAt: (self session ifNotNil: #id))
			ifNil: [ self openTime ]
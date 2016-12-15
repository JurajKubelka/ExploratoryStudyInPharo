*DevFlowAnalysis
videoStartTime
	^ (DFAScripts uniqueInstance videoStartTimeAt: self session id)
			ifNil: [ self openTime ]
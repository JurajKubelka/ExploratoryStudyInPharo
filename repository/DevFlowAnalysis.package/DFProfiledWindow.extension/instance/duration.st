*DevFlowAnalysis
duration
	^ (self closeTime ifNil: [ self session endTime ]) - 
			(self openTime ifNil: [ ^ self session startTime ])
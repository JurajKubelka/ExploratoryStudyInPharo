*DevFlowAnalysis
duration
	^ (self closeTime ifNil: [ ^ Duration new ]) - 
			(self openTime ifNil: [ ^ Duration new ])
*DevFlowAnalysis
isFamiliar
	self title isSessionHeading ifTrue: [ ^ self title isFamiliarSession ].
	^ self title includesSubstring: ' Familiar '
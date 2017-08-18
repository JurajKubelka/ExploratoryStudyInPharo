*DevFlowAnalysis
id
	self title isHeadingItem ifTrue: [ ^ self title sessionId ].
	^ self title copyUpTo: Character space 
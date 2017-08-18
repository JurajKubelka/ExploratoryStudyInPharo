*DevFlowAnalysis
videoStartTime
	self session title isHeadingItem ifTrue: [ ^ self session title videoStartTime 
		ifEmpty: [ self session startTime ]
		ifNotEmpty: #asDateAndTime ].
	^ (DFAScripts uniqueInstance videoStartTimeAt: (self session ifNotNil: #id))
			ifNil: [ self openTime ]
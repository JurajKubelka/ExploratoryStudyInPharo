accessing
toolUsageForQuestion: aQuestion
	| count |
	count := (aQuestion staticVsLiveToolUsage asFloat * 100) rounded.
	count < 20 ifTrue: [ ^ 'S' ].
	count < 40 ifTrue: [ ^ 's' ].
	count < 60 ifTrue: [ ^ 's/d' ].
	count < 80 ifTrue: [ ^ 'd' ].
	count <= 100 ifTrue: [ ^ 'D' ].
	self halt: 'something wrong with count value.'
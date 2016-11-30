accessing
toolUsageForQuestion: aQuestion
	| count |
	count := (aQuestion staticVsLiveToolUsage asFloat * 100) rounded.
	count <= 20 ifTrue: [ ^ 'S ', count printString ].
	count <= 40 ifTrue: [ ^ 's ', count printString ].
	count <= 60 ifTrue: [ ^ 's/d ', count printString ].
	count <= 80 ifTrue: [ ^ 'd ', count printString ].
	count <= 100 ifTrue: [ ^ 'D ', count printString ].
	self halt: 'something wrong with count value.'
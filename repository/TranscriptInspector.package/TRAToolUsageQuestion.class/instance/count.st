accessing
count
	^ question 
		ifNotNil: [ (question staticVsLiveToolUsage asFloat * 100) rounded ]
		ifNil: [ 0 ]
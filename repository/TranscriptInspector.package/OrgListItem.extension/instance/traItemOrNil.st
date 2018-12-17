*TranscriptInspector
traItemOrNil
	^ self contents lines 
		detect: [ :eachLine | eachLine class = TRAItem ]
		ifNone: [ nil ]
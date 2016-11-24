visitor
visitTableToolUsageColumn: aColumn 
	| columnQuestion count alpha |
	columnQuestion := aColumn sameQuestionAs: question.
	columnQuestion 
		ifNotNil: [ count := (columnQuestion staticVsLiveToolUsage asFloat * 100) rounded ]
		ifNil: [ count := 0 ].
	alpha := export cellColorForSession: aColumn count: count.
	export field: count asString color: 'green' alpha: alpha.
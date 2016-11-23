visitor
visitTableToolUsageColumn: aColumn 
	| columnQuestion count alpha |
	columnQuestion := aColumn sameQuestionAs: question.
	count := columnQuestion count.
	alpha := export cellColorForSession: aColumn count: count.
	export field: count asString color: 'green' alpha: alpha.
visitor
visitTableSillitoToolUsageColumn: aColumn 
	(aColumn sameQuestionAs: question) ifNotNil: [ :aQuestion |
		export field: aQuestion toolUsage printedSymbol asString ].
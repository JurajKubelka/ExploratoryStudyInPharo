visitor
visitTableSymbolToolUsageColumn: aColumn 
	(aColumn sameQuestionAs: question) 
		ifNotNil: [ :aQuestion | | usage |
			usage := aColumn toolUsageForQuestion: aQuestion.
			export field: usage ]
		ifNil: [ export field: '-' ].
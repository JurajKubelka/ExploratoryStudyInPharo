visitor
visitTableSymbolToolUsageColumn: aColumn 
	(aColumn sameQuestionAs: question) 
		ifNotNil: [ :aQuestion | | usage color alpha |
			usage := aColumn toolUsageForQuestion: aQuestion.
			alpha := 0.
			(usage = 's/d') ifTrue: [ alpha := 75. color := 'yellow' ]. 
			(usage = 'd') ifTrue: [ alpha := 75. color := 'green' ]. 
			(usage = 'D') ifTrue: [ alpha := 75. color := 'green' ]. 
			export field: usage color: color alpha: alpha ]
		ifNil: [ export field: '-' ].
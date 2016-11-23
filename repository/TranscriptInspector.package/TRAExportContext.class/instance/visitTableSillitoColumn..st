visitor
visitTableSillitoColumn: aColumn 
	| columnQuestion count field alpha |
	columnQuestion := aColumn sameQuestionAs: question.
	columnQuestion isExtraQuestion 
		ifTrue: [ count := 0. field := '-'. ]
		ifFalse: [ count := columnQuestion ifNotNil: #count ifNil: [ 0 ].
			count isZero ifTrue: [ field := '' ] ifFalse: [ field := count printString ] ].
	alpha := export cellColorForSession: aColumn count: count.
	export field: field color: 'blue' alpha: alpha.
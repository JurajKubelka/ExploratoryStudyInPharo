visitor
visitTableHeadingColumn: aColumn 
	| columnQuestion count field alpha |
	columnQuestion := aColumn sameQuestionAs: question.
	count := columnQuestion ifNotNil: #count ifNil: [ 0 ].
	count isZero ifTrue: [ field := '' ] ifFalse: [ field := count printString ].
	alpha := export cellColorForSession: aColumn count: count.
	export field: field color: 'blue' alpha: alpha
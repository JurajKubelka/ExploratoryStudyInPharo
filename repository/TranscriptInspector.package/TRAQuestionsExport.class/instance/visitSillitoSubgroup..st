visitor
visitSillitoSubgroup: aTRASillitoSubgroup
	"header"
	aTRASillitoSubgroup group longName = aTRASillitoSubgroup longName ifFalse: [ 
		self 
			firstSeparator;
			italicField: aTRASillitoSubgroup longName;
			columnSeparator.
		questionsPerSession do: [ :eachSession |  ] separatedBy: [ self columnSeparator ].
		self lineSeparator ].
	"data"
	aTRASillitoSubgroup questions do: [ :eachQuestion |
		self firstSeparator.
		self field: eachQuestion fullName. 
		self columnSeparator.
		questionsPerSession do: [ :eachSession | | question field alpha |
			question := eachSession value sameQuestionAs: eachQuestion.
			field := question ifNotNil: #count ifNil: [ 0 ].
			alpha := self cellColorForSession: eachSession count: field.
			field isZero ifTrue: [ field := '' ].
			self field: field color: 'blue' alpha: alpha ]
			separatedBy: [ self columnSeparator ].
		self lineSeparator ].
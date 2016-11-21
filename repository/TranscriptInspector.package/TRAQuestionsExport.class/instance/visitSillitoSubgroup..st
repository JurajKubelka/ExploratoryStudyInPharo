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
		questionsPerSession do: [ :eachSession | | question count field alpha |
			question := eachSession value sameQuestionAs: eachQuestion.
			(eachSession key isSillito and: [ question isExtraQuestion ])
				ifTrue: [ count := 0. field := '-'. ]
				ifFalse: [ count := question ifNotNil: #count ifNil: [ 0 ].
					count isZero ifTrue: [ field := '' ] ifFalse: [ field := count printString ] ].
			alpha := self cellColorForSession: eachSession count: count.
			self field: field color: 'blue' alpha: alpha ]
			separatedBy: [ self columnSeparator ].
		self lineSeparator ].
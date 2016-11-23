visitor
visitSillitoSubgroup: aTRASillitoSubgroup
	"header"
	aTRASillitoSubgroup group longName = aTRASillitoSubgroup longName ifFalse: [ 
		self 
			firstSeparator;
			italicField: aTRASillitoSubgroup longName;
			columnSeparator.
		tableColumns do: [ :eachSession |  ] separatedBy: [ self columnSeparator ].
		self lineSeparator ].
	"data"
	aTRASillitoSubgroup questions withIndexDo: [ :eachQuestion :index |
		self firstSeparator.
		self field: eachQuestion fullName. 
		self columnSeparator.
		tableColumns do: [ :eachColumn | | question count field alpha |
			question := eachColumn sameQuestionAs: eachQuestion.
			(eachColumn isSillito and: [ question isExtraQuestion ])
				ifTrue: [ count := 0. field := '-'. ]
				ifFalse: [ count := question ifNotNil: #count ifNil: [ 0 ].
					count isZero ifTrue: [ field := '' ] ifFalse: [ field := count printString ] ].
			alpha := self cellColorForSession: eachColumn count: count.
			self field: field color: 'blue' alpha: alpha ]
			separatedBy: [ self columnSeparator ].
		self lineSeparator.
		index odd ifTrue: [ self dashedHorizontalLine ] ].
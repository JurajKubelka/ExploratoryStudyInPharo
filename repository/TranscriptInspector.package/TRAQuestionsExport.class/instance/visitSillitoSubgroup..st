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
		tableColumns do: [ :eachColumn | eachColumn accept: (TRAExportContext export: self question: eachQuestion) ] separatedBy: [ self columnSeparator ].
		self lineSeparator.
		index odd ifTrue: [ self dashedHorizontalLine ] ].
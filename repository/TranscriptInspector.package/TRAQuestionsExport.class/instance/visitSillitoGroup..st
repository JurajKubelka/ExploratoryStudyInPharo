visitor
visitSillitoGroup: aTRASillitoGroup
	"header"
	self 
		horizontalLine;
		firstSeparator;
		boldField: aTRASillitoGroup longName, ' (', aTRASillitoGroup shortName, ')';
		columnSeparator.
	questionsPerSession do: [ :eachSession |  ] separatedBy: [ self columnSeparator ].
	self lineSeparator.
	"data"
	aTRASillitoGroup subgroups do: [ :each | each accept: self ].
	"total"
	self firstSeparator.
	self field: 'Total in the category'.
	self columnSeparator.
	questionsPerSession do: [ :eachSession | | field |
		field := (eachSession value groupSameAs: aTRASillitoGroup) count.
		field isZero ifTrue: [ field := '' ].
		self field: field ]
		separatedBy: [ self columnSeparator ].
	self lineSeparator.
visitor
visitSillitoGroup: aTRASillitoGroup
	"header"
	self 
		horizontalLine;
		firstSeparator;
		boldField: aTRASillitoGroup longName, ' (', aTRASillitoGroup shortName, ')';
		columnSeparator.
	tableColumns do: [ :eachSession |  ] separatedBy: [ self columnSeparator ].
	self tableLineSeparator.
	"data"
	aTRASillitoGroup subgroups do: [ :each | each accept: self ].
	"total"
	self firstSeparator.
	self field: 'Total in the category'.
	self columnSeparator.
	tableColumns do: [ :eachSession | | field |
		field := (eachSession groupSameAs: aTRASillitoGroup) count.
		field isZero ifTrue: [ field := '' ].
		self field: field ]
		separatedBy: [ self columnSeparator ].
	self tableLineSeparator.
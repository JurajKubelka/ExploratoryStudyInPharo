visitor
visitSillito: aTRASillito
	aTRASillito groups do: [ :eachGroup | eachGroup accept: self ].
	"total"
	self horizontalLine.
	self firstSeparator.
	self field: 'Total'.
	self columnSeparator.
	questionsPerSession do: [ :eachSession |
		self field: eachSession value count ]
		separatedBy: [ self columnSeparator ].
	self lineSeparator.
	self emacsConfiguration.
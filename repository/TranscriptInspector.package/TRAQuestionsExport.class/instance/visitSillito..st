visitor
visitSillito: aTRASillito
	aTRASillito groups do: [ :eachGroup | eachGroup accept: self ].
	"total"
	self horizontalLine.
	self firstSeparator.
	self field: 'Total'.
	self columnSeparator.
	tableColumns do: [ :tableColumn |
		self field: tableColumn count ]
		separatedBy: [ self columnSeparator ].
	self lineSeparator.
	self emacsConfiguration.
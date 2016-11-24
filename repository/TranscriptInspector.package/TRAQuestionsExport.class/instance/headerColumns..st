private
headerColumns: aCollection 
	self firstSeparator.
	self boldField: 'Question Types per Category'.
	self columnSeparator.
	aCollection 
		do: [ :eachColumn |
			self field: (eachColumn title) ]
		separatedBy: [ self columnSeparator ].
	self tableLineSeparator.
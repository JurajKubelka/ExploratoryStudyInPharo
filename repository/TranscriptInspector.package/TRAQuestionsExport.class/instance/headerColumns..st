private
headerColumns: aCollection 
	self firstSeparator.
	self boldField: 'Question Types per Category'.
	self columnSeparator.
	aCollection 
		do: [ :eachSession |
			self field: (eachSession key sessionId) ]
		separatedBy: [ self columnSeparator ].
	self lineSeparator.
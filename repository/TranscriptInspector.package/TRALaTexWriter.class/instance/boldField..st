writing
boldField: aString 
	stream nextPut: '\textbf{'.
	self field: aString.
	stream nextPut: '}'.
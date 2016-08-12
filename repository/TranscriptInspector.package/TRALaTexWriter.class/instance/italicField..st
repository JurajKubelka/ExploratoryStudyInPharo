writing
italicField: aString 
	stream nextPut: '\textit{'.
	self field: aString.
	stream nextPut: '}'.
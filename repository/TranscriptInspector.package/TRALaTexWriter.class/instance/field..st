writing
field: aString 
	stream nextPut: (aString asString replaceAllRegex: '#' with: '\#')
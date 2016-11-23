writing
field: aString 
	| output |
	output := aString asString replaceAllRegex: '#' with: '\#'.
	output := output replaceAllRegex: '%' with: '\%'.
	stream nextPut: output
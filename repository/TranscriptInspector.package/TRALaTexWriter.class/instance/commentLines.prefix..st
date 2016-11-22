writing
commentLines: aCollection prefix: prefixString 
	aCollection do: [ :eachLine |
		stream 
			nextPut: prefixString; 
			nextPut: eachLine;
			nextPut: String cr ]
printing
printOn: aStream
	aStream
		nextPutAll: 'Keyword: ';
		print: self keywords size;
		nextPutAll: 'x ';
		nextPutAll: self keywordName printString
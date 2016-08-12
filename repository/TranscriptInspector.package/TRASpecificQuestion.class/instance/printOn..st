printing
printOn: aStream 
	aStream
		nextPutAll: 'Q"';
		nextPutAll: self contents;
		nextPut: $".
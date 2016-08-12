printing
printOn: aStream 
	aStream
		nextPutAll: 'c"';
		nextPutAll: self contents;
		nextPut: $".
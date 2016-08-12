printing
printOn: aStream 
	aStream
		nextPutAll: 'GQ"';
		nextPutAll: self contents;
		nextPut: $".
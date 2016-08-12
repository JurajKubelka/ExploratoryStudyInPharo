printing
printOn: aStream 
	aStream
		nextPut: $Q;
		nextPutAll: self contents.
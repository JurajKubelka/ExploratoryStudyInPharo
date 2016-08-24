printing
printOn: aStream
	aStream
		nextPutAll: 'QiG';
		nextPut: $(;
		print: self question;
		nextPut: $)
printing
printOn: aStream
	aStream 
		print: self question;
		nextPutAll: ' as ';
		print: self response
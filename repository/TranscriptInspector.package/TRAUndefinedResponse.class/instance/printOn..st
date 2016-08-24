printing
printOn: aStream
	aStream 
		print: self question;
		nextPutAll: ' without response state'
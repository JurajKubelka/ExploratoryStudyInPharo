printing
printOn: aStream
	aStream 
		print: self question;
		nextPutAll: ' as ';
		nextPutAll: (self response 
			ifNotNil: [ :aResponse | aResponse contents ]
			ifNil: '')
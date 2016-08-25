printing
printOn: aStream
	aStream
		nextPutAll: 'QiG';
		nextPut: $(;
		print: (self question 
			ifNotNil: [ :aQuestion | aQuestion responseState ] 
			ifNil: [ nil ]);
		nextPut: $)
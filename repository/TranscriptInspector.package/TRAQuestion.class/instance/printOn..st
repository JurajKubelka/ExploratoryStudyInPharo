printing
printOn: aStream
	aStream
		nextPut: $(;
		nextPutAll: self shortName asString;
		nextPut: $);
		space;
		nextPutAll: self longName
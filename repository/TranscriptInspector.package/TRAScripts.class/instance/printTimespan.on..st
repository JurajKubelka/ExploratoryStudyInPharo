printing
printTimespan: aTimespan on: aStream
	aTimespan ifNotNil: [ 
		aStream
			nextPutAll: (aTimespan start hours * 60 + aTimespan start minutes) asTwoCharacterString;
			nextPut: $:;
			nextPutAll: aTimespan start seconds asTwoCharacterString.
		aTimespan duration isZero ifFalse: [ 
			aStream
				nextPutAll: '-';
				nextPutAll: (aTimespan next start hours * 60 + aTimespan next start minutes) 
									asTwoCharacterString;
				nextPut: $:;
				nextPutAll: aTimespan next start seconds asTwoCharacterString ] ].
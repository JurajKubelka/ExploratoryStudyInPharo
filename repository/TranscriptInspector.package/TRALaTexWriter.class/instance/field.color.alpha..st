writing
field: aString color: aColorName alpha: anInteger
	anInteger > 0 ifTrue: [ 
		stream 
			nextPut: '\cellcolor{'; 
			nextPut: aColorName; 
			nextPut: '!';
			nextPut: anInteger printString;
			nextPut: '} ' ].
	stream nextPut: (aString asString replaceAllRegex: '#' with: '\#')
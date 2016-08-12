accessing
line
	^ (String streamContents: [ :aStream | self printAllTextOn: aStream ]) lines first
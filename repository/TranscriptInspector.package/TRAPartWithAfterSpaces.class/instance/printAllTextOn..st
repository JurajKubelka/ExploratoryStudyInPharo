printing
printAllTextOn: aStream 
	self printOn: aStream.
	self after ifNotNil: [ aStream nextPutAll: self after ].
printing
printAllTextOn: aStream 
	self printTimespanOn: aStream.
	aStream nextPutAll: self space.
	self parts 
		do: [ :eachPart | eachPart printAllTextOn: aStream ].
	self end ifNotNil: [ aStream nextPut: self end ]
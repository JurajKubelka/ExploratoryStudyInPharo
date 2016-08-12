printing
printOn: aStream
	self groupType 
		ifNotNil: [ 
			aStream nextPutAll: self groupType longName ]
		ifNil: [ super printOn: aStream ]
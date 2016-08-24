accessing
shortName
	^ String streamContents: [ :aStream |
		aStream
			print: self responses size;
			nextPutAll: 'x '.
		self responses 
			do: [ :eachKeyword | aStream nextPutAll: eachKeyword contents ]
			separatedBy: [ aStream nextPutAll: ', ' ] ]
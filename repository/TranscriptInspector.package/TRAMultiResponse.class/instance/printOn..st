printing
printOn: aStream
	aStream 
		print: self question;
		nextPutAll: ' as '.
	self responses 
			do: [ :eachKeyword | aStream nextPutAll: eachKeyword contents ]
			separatedBy: [ aStream nextPutAll: ', ' ]
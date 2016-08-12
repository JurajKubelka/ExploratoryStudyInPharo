accessing
contents
	^ String streamContents: [ :aStream |
		stream contents do: [ :each | aStream nextPutAll: each ] ]
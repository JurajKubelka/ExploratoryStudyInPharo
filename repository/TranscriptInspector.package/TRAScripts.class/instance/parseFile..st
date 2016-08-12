public
parseFile: aFileReference
	^ aFileReference readStreamDo: [ :aStream | | document |
			document := self parseStream: aStream.
			document fileReference: aFileReference.
			document ]
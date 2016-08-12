*TranscriptInspector
codeType
	^ (self title beginsWith: 'Session ')
			ifFalse: [ self parent codeType ]
			ifTrue: [ self isFamiliarSession 
							ifTrue: [ TRASillitoFamiliar default ]
							ifFalse: [ TRASillitoUnfamiliar default ] ]
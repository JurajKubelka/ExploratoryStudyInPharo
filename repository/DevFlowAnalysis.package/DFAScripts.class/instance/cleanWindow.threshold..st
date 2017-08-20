cleaning
cleanWindow: aDFProfiledWindow threshold: aDateTime 
	aDFProfiledWindow events: (aDFProfiledWindow events reject: [ :each | each timeStamp > aDateTime ]).
	aDFProfiledWindow closeTime ifNotNil: [ :time | 
		time > aDateTime ifTrue: [ aDFProfiledWindow closeTime: nil ] ].
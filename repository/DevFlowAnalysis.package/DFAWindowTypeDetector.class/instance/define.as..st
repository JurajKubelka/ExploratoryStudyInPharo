private
define: aDFProfiledWindow as: aDFAWindowType
	self assert: [ ((aDFProfiledWindow attributes includesKey: #windowType) and: [ 
			(aDFProfiledWindow attributes at: #windowType) == aDFAWindowType ])
				or: [ (aDFProfiledWindow attributes includesKey: #windowType) not ] ].
	aDFProfiledWindow attributes at: #windowType put: aDFAWindowType 
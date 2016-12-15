private
defineNewProtocolDialog: aDFProfiledWindow 
	aDFProfiledWindow isNewProtocolDialog 
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTNewProtocolDialog default ].
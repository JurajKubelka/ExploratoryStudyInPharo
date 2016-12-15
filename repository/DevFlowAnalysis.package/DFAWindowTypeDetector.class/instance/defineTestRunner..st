private
defineTestRunner: aDFProfiledWindow 
	aDFProfiledWindow isTestRunner 
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTTestRunner default ].
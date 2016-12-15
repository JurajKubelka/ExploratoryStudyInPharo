private
defineUserInterrupt: aDFProfiledWindow 
	aDFProfiledWindow isUserInterrupt ifTrue: [ self define: aDFProfiledWindow as: DFAWTUserInterrupt default ]
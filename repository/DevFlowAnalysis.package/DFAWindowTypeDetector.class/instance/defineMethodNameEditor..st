private
defineMethodNameEditor: aDFProfiledWindow 
	aDFProfiledWindow isMethodNameEditor  
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTMethodNameEditor default ].
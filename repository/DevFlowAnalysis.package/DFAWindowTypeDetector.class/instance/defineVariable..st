private
defineVariable: aDFProfiledWindow 
	aDFProfiledWindow isInstanceVariablesBrowser ifTrue: [ self define: aDFProfiledWindow as: DFAWTInstanceVariableSelector default ].
	aDFProfiledWindow isVariableAccessesBrowser ifTrue: [ self define: aDFProfiledWindow as: DFAWTVariableAccessesBrowser default ].
	
private
defineClassSearchDialog: aDFProfiledWindow 
	aDFProfiledWindow isClassSearchDialog ifTrue: [ self define: aDFProfiledWindow as: DFAWTClassSearchDialog default ]
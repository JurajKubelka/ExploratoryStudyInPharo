private
defineQuestionDialog: aDFProfiledWindow 
	aDFProfiledWindow isQuestionWithoutCancelDialogWindow 
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTQuestionDialog default ].
	aDFProfiledWindow isCustomQuestionDialogWindow 
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTQuestionDialog default ].
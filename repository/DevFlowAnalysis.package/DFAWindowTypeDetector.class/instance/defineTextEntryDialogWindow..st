private
defineTextEntryDialogWindow: aDFProfiledWindow 
	aDFProfiledWindow isTextEntryDialogWindow 
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTTextEntryDialog default ].
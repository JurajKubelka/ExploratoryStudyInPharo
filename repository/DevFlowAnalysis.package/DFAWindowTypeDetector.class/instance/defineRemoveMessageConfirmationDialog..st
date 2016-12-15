private
defineRemoveMessageConfirmationDialog: aDFProfiledWindow 
	aDFProfiledWindow isRemoveMessageConfirmationDialog 
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTRemoveMessageConfirmationDialog default ]
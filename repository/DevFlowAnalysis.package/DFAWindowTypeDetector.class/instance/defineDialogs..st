private
defineDialogs: aDFProfiledWindow 
	aDFProfiledWindow isUnknownVariableNameDialog 
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTUnknownVariableDialog default ].
	aDFProfiledWindow isUnknownSelectorDialog 
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTUnknownSelectorDialog default ].
	aDFProfiledWindow isFindReplaceWindow 
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTFindAndReplaceDialog default ].
	aDFProfiledWindow isChoiceDialog 
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTChoiceDialog default ].
	aDFProfiledWindow isColorSelectorDialogWindow
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTColorSelectorDialogWindow default ].
	aDFProfiledWindow isUnusedVariableDialog
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTUnusedVariableDialog default ].
	aDFProfiledWindow isCreatePackageDialog
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTCreateNewPackageDialog default ].
	aDFProfiledWindow isWhereToCompileDialog 
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTWhereToCompileDialog default ].
	aDFProfiledWindow isInspectWhomDialog
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTInspectWhomDialog default ].
	aDFProfiledWindow isClassToBrowserDialog 
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTClassToBrowserDialog default ].
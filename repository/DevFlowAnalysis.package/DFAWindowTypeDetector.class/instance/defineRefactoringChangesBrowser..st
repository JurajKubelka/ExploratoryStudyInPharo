private
defineRefactoringChangesBrowser: aDFProfiledWindow 
	aDFProfiledWindow isChangesBrowser 
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTRefactoringChangesBrowser default ]. 
	aDFProfiledWindow isSpecChangesBrowser 
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTRefactoringChangesBrowser default ]. 

private
defineRecentVersionsBrowser: aDFProfiledWindow 
	aDFProfiledWindow isRecentVersionsBrowser 
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTRecentVersionsBrowser default ]. 
	aDFProfiledWindow isSysRecentVersionsBrowser 
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTRecentVersionsBrowser default ]. 
	aDFProfiledWindow isRepositoryWindow 
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTRepositoryBrowser default ]

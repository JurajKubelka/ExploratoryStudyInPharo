private
defineChangesBrowser: aDFProfiledWindow 
	aDFProfiledWindow isChangesToBrowser 
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTChangesToBrowser default ].
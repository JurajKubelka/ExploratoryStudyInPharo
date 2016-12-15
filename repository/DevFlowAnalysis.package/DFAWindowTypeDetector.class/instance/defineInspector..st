private
defineInspector: aDFProfiledWindow 
	aDFProfiledWindow isOldInspector ifTrue: [ self define: aDFProfiledWindow as: DFAWTOldInspector default ].
	aDFProfiledWindow isGTInspector ifTrue: [ self define: aDFProfiledWindow as: DFAWTGTInspector default ].
	aDFProfiledWindow isSystemWindowInspector ifTrue: [ self define: aDFProfiledWindow as: DFAWTOldInspector default ].
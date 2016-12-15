private
defineExamplesBrowser: aDFProfiledWindow 
	aDFProfiledWindow isGlamorousBrowser 
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTGlamorousBrowser default ].
	aDFProfiledWindow isRoassalExamplesWindow 
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTGRoassalExampleBrowser default ].
	(aDFProfiledWindow windowClass = DFWindowClassMapper tStandardWindow and: [ 
		aDFProfiledWindow label = 'Rubric workspace example' ])
			ifTrue: [ self define: aDFProfiledWindow as: DFAWTExamplesBrowser default ].
	(aDFProfiledWindow windowClass = DFWindowClassMapper tStandardWindow and: [ 
		aDFProfiledWindow label = 'Method editor with shout' ])
			ifTrue: [ self define: aDFProfiledWindow as: DFAWTExamplesBrowser default ].
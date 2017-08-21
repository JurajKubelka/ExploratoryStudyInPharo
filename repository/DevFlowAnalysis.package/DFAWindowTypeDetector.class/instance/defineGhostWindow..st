private
defineGhostWindow: aDFProfiledWindow 
	aDFProfiledWindow windowType ifNotNil: [ ^ self ].
	"S1"
	(aDFProfiledWindow windowClass = #SystemWindow and: [ 
		aDFProfiledWindow label = 'GL viewport' ]) 
			ifTrue: [ self define: aDFProfiledWindow as: DFAWTGhostWindow default ].
	"T10a - halt once"
	(aDFProfiledWindow id = 970194944 and: [ aDFProfiledWindow label = 'Window' ])
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTSpecDebugger default ].
	(aDFProfiledWindow id = 1038090240 and: [ aDFProfiledWindow label = 'Window' ])
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTSpecDebugger default ].
	"T10b - halt once"
	(aDFProfiledWindow id = 762839040 and: [ aDFProfiledWindow label = 'Window' ])
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTSpecDebugger default ].
	(aDFProfiledWindow id = 364904448 and: [ aDFProfiledWindow label = 'Window' ])
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTSpecDebugger default ].

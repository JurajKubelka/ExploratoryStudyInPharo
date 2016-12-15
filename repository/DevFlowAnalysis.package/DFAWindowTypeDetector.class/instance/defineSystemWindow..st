private
defineSystemWindow: aDFProfiledWindow 
	"S1"
	aDFProfiledWindow windowType ifNotNil: [ ^ self ].
	(aDFProfiledWindow windowClass = #SystemWindow and: [ 
		aDFProfiledWindow label beginsWith: 'a TRMorph' ]) 
			ifTrue: [ self define: aDFProfiledWindow as: DFAWTAssignmentApplication default ].
	"S2"
	(aDFProfiledWindow windowClass = #SystemWindow and: [ 
		aDFProfiledWindow label beginsWith: 'a R3MorphWith2DOverlay' ]) 
			ifTrue: [ self define: aDFProfiledWindow as: DFAWTAssignmentApplication default ].
	"S9"
	aDFProfiledWindow isLiveRobotProgrammingWindow 
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTAssignmentApplication default ].
	"T4"
	(aDFProfiledWindow windowClass = DFWindowClassMapper tSpecWindow and: [ 
		aDFProfiledWindow label = 'LRP Errors' ])
			ifTrue: [ self define: aDFProfiledWindow as: DFAWTAssignmentApplication default ].
	"S8"	
	(aDFProfiledWindow windowClass = DFWindowClassMapper tGLMSystemWindow and: [ 
		aDFProfiledWindow label = 'Panel Analizador SOA' ])
			ifTrue: [ self define: aDFProfiledWindow as: DFAWTAssignmentApplication default ].

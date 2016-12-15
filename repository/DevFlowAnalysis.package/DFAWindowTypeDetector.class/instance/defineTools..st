private
defineTools: aDFProfiledWindow 
	aDFProfiledWindow isTimeProfilerWindow 
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTTimeProfiler default ].
	aDFProfiledWindow isSettingBrowserWindow 
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTSettingsBrowser default ].
	aDFProfiledWindow isFinderUI 
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTFinder default ].
	aDFProfiledWindow isTranscript 
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTTranscript default ].
	aDFProfiledWindow isProcessBrowser 
		ifTrue: [ self define: aDFProfiledWindow as: DFAWTProcessBrowser default ].
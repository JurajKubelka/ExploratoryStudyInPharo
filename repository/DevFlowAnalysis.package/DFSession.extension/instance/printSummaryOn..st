*DevFlowAnalysis
printSummaryOn: aStream 
	aStream 
		nextPutAll: 'Number of Open Windows:';
		cr;
		nextPutAll: ' - debuggers: ';
		print: (self windows count: [ :each | each windowType isDebugger]);
		cr;
		nextPutAll: ' - inspectors: ';
		print: (self windows count: [ :each | each windowType isInspector]);
		cr;
		nextPutAll: ' - playgrounds: ';
		print: (self windows count: [ :each | each windowType isPlayground]);
		cr;
		nextPutAll: ' - other: ';
		print: (self windows count: [ :each | each windowType isOtherIDE]);
		cr;
		nextPutAll: ' - total: ';
		print: (self windows size);
		cr;
		yourself 
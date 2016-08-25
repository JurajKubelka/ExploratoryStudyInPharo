missed opportunity
missedOpportunitesAndFalseAssumptionsIn: composite node: aNode
	composite table
		title: 'Missed';
		display: [ (self missedOpportunitesAndFalseAssumptions: aNode) values ];
		column: 'Session'
			evaluated: [ :collection | collection first sessionId ]
			width: 80
			tags: {  } 
			sortedBy: [ :a :b | a first sessionOrder < b first sessionOrder ];
		column: 'Missed Dyn'
			evaluated: [ :collection | collection second size ]
			width: 80;
		column: 'Missed Stat'
			evaluated: [ :collection | collection third size ]
			width: 80;
		column: 'False Dyn'
			evaluated: [ :collection | collection fourth size ]
			width: 80;
		column: 'False Stat'
			evaluated: [ :collection | collection fifth size ]
			width: 80;
		installExportToCSV;
		yourself
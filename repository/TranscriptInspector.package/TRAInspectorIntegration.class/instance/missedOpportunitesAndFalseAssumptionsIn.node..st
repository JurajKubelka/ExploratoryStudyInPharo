missed opportunity
missedOpportunitesAndFalseAssumptionsIn: composite node: aNode
	composite table
		title: 'Missed';
		display: [ (self missedOpportunitesAndFalseAssumptions: aNode) associations ];
		column: 'Session'
			evaluated: [ :assoc | assoc key sessionId ]
			width: 80
			tags: {  } 
			sortedBy: [ :a :b | a key sessionOrder < b key sessionOrder ];
		column: 'Missed Dyn'
			evaluated: [ :assoc | assoc value second size ]
			width: 80;
		column: 'Missed Stat'
			evaluated: [ :assoc | assoc value third size ]
			width: 80;
		column: 'False Dyn'
			evaluated: [ :assoc | assoc value fourth size ]
			width: 80;
		column: 'False Stat'
			evaluated: [ :assoc | assoc value fifth size ]
			width: 80;
		installExportToCSV;
		yourself
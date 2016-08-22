questions - tool usage
durationPerStaticAndDynamicPerQuestionLevelIn: composite node: aNode
	composite table
		title: 'Levels';
		display: [ (self durationPerStaticAndDynamicPerQuestionLevel: aNode) associations ];
		column: 'Level'
			evaluated: [ :assoc | assoc key ] 
			sortedBy: [ :a :b | a key < b key  ];
		column: 'Static Time'
			evaluated: [ :assoc | assoc value first roundTo: 1 second ];
		column: 'Dynamic Time'
			evaluated: [ :assoc | assoc value second roundTo: 1 second ];
		installExportToCSV;
		yourself
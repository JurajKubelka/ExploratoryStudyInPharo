categories complexity
categoryNodeTypes: composite node: aNode
	| table compositeTable |
	table := self categoryNodeTypes: aNode.
	table ifEmpty: [ ^ self ].
	compositeTable := composite table.
	^ compositeTable
		title: 'Categories Per Question Node Types';
		display: [ table ];
		column: 'Category'
			evaluated: [ :line | line first ]
			width: 90;
		column: 'Roots without Children'
			evaluated: [ :line | line second size ]
			width: 100
			tags: {  }
			sortedBy: [ :a :b | a second size > b second size ];
		column: 'Roots with Children'
			evaluated: [ :line | line third size ]
			width: 100
			tags: {  }
			sortedBy: [ :a :b | a third size > b third size ];
		column: 'Nodes With Parents and Children'
			evaluated: [ :line | line fourth size ]
			width: 120
			tags: {  }
			sortedBy: [ :a :b | a fourth size > b fourth size ];
		column: 'Leaves With Parents'
			evaluated: [ :line | line fifth size ]
			width: 120
			tags: {  }
			sortedBy: [ :a :b | a fourth size > b fourth size ];
		installExportToCSV.
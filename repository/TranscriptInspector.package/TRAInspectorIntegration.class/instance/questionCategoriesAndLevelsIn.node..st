categories - levels
questionCategoriesAndLevelsIn: composite node: aNode
	| table compositeTable |
	table := self questionCategoriesAndLevels: aNode.
	table ifEmpty: [ ^ self ].
	compositeTable := composite table.
	compositeTable
		title: 'Level Categories';
		display: [ table ];
		column: 'Parent Level'
			evaluated: [ :line | line first ]
			width: 90;
		column: 'Parent Category'
			evaluated: [ :line | line second ]
			width: 90;
		column: 'Child Category'
			evaluated: [ :line | line third ]
			width: 90;
		column: 'Questions'
			evaluated: [ :line | line fourth size ]
			width: 90
			tags: {  }
			sortedBy: [ :a :b | a fourth size > b fourth size ];
		installExportToCSV.
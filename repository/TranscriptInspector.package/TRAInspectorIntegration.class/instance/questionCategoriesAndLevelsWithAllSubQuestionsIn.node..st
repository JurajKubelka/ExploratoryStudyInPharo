category questions with all sub-questions
questionCategoriesAndLevelsWithAllSubQuestionsIn: composite node: aNode
	| table compositeTable |
	table := self questionCategoriesAndLevelsWithAllSubQuestions: aNode.
	table ifEmpty: [ ^ self ].
	compositeTable := composite table.
	compositeTable
		title: 'Sub-Categories';
		display: [ table ];
		column: 'Parent Level'
			evaluated: [ :line | line first ]
			width: 90;
		column: 'Parent Category'
			evaluated: [ :line | line second ]
			width: 100;
		column: 'Child Category'
			evaluated: [ :line | line third ]
			width: 100;
		column: 'All Sub-Questions'
			evaluated: [ :line | line fourth size ]
			width: 120
			tags: {  }
			sortedBy: [ :a :b | a fourth size > b fourth size ];
		installExportToCSV.
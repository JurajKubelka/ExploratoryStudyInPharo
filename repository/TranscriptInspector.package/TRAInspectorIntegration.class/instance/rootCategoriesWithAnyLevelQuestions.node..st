categories complexity
rootCategoriesWithAnyLevelQuestions: composite node: aNode
	| table compositeTable |
	table := self rootCategoriesWithAnyLevelQuestions: aNode.
	table ifEmpty: [ ^ self ].
	compositeTable := composite table.
	^ compositeTable
		title: 'Root Questions With Any-Level Children';
		display: [ table ];
		column: 'Category'
			evaluated: [ :line | line key groupName select: #isUppercase ]
			width: 90;
		column: 'Number of Any-Level Sub-Questions'
			evaluated: [ :line | line value size ]
			width: 90;
		installExportToCSV.
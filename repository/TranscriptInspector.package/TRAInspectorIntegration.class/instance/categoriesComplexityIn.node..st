categories complexity - parents and children
categoriesComplexityIn: composite node: aNode
	| table compositeTable |
	table := self categoriesComplexity: aNode.
	table ifEmpty: [ ^ self ].
	compositeTable := composite table.
	^ compositeTable
		title: 'Categories Complexity';
		display: [ table ];
		column: 'Category + Metrics'
			evaluated: [ :line | line first ]
			width: 120;
		column: 'FFP'
			evaluated: [ :line | line second isString ifTrue: [ line second ] ifFalse: [ line second size ] ]
			width: 100
			tags: {  }
			sortedBy: [ :a :b | a second size > b second size ];
		column: 'EFP'
			evaluated: [ :line | line third isString ifTrue: [ line third ] ifFalse: [ line third size ] ]
			width: 100
			tags: {  }
			sortedBy: [ :a :b | a third size > b third size ];
		column: 'US'
			evaluated: [ :line | line fourth isString ifTrue: [ line fourth ] ifFalse: [ line fourth size ] ]
			width: 120
			tags: {  }
			sortedBy: [ :a :b | a fourth size > b fourth size ];
		column: 'QGS'
			evaluated: [ :line | line fifth isString ifTrue: [ line fifth ] ifFalse: [ line fifth size ] ]
			width: 120
			tags: {  }
			sortedBy: [ :a :b | a fifth size > b fifth size ];
		installExportToCSV.
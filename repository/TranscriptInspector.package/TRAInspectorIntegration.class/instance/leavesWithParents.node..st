categories complexity
leavesWithParents: composite node: aNode
	| table compositeTable |
	table := self leavesWithParents: aNode.
	table ifEmpty: [ ^ self ].
	compositeTable := composite table.
	^ compositeTable
		title: 'Leaves with Parents';
		display: [ table ];
		column: 'Category'
			evaluated: [ :line | line groupName select: #isUppercase ]
			width: 90;
		column: 'Level'
			evaluated: [ :line | line level ]
			width: 90;
		installExportToCSV.
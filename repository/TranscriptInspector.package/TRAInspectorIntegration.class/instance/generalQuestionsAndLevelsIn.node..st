questions - levels
generalQuestionsAndLevelsIn: composite node: aNode
	| table compositeTable |
	table := self generalQuestionsAndLevels: aNode.
	table ifEmpty: [ ^ self ].
	compositeTable := composite table.
	compositeTable
		title: 'Levels GQ';
		display: [ table ];
		column: 'Id'
			evaluated: [ :line | line last shortName ]
			width: 30;
		column: 'Question'
			evaluated: [ :line | line last ]
			width: 350;
		installExportToCSV.
	1 to: table first size - 1 do: [ :level |
		compositeTable
			column: 'L', level printString 
			evaluated: [ :line | (line at: level) size ]
			width: 30
			tags: {  }
			sortedBy: [ :a :b | (a at: level) size > (b at: level) size ] ].
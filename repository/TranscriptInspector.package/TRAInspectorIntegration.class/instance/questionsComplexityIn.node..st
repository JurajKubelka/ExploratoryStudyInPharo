questions - complexity
questionsComplexityIn: composite node: aNode
	"| Question Id | Group | Level | Any-Level Sub-Questions | "
	^ composite table
		title: 'Questions Complexity';
		display: [ aNode generalQuestions ];
		column: 'Question'
			evaluated: [ :line | line shortName ]
			width: 120;
		column: 'Group'
			evaluated: [ :line | line mainGroupName ]
			width: 100;
		column: 'Familiar'
			evaluated: [ :line | line sessionHeading isFamiliarSession ifTrue: [ 1 ] ifFalse: [ 0 ] ]
			width: 100;
		column: 'Level'
			evaluated: [ :line | line level ]
			width: 100;
		column: 'Any-Level Sub-Questions'
			evaluated: [ :line | line generalAnyLevelSubQuestions size ]
			width: 120;
		installExportToCSV.
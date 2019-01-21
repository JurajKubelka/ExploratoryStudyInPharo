questions - complexity
questionsComplexityIn: composite node: aNode
	"| Question Id | Group | Level | Any-Level Sub-Questions | "
	^ composite table
		title: 'Questions Complexity';
		display: [ aNode generalQuestions ];
		column: 'Question'
			evaluated: [ :line | line shortName ]
			width: 120;
		column: 'Category'
			evaluated: [ :line | line mainGroupName ]
			width: 100;
		column: 'Codebase'
			evaluated: [ :line | line sessionHeading isFamiliarSession ifTrue: [ 'Familiar' ] ifFalse: [ 'Unfamiliar' ] ]
			width: 100;
		column: 'Level'
			evaluated: [ :line | line level ]
			width: 100;
		column: 'Number of Participant Sub-Questions'
			evaluated: [ :line | line generalAnyLevelSubQuestions size ]
			width: 120;
		column: 'Root Questions'
			evaluated: [ :line | line parentHierarchyGeneralQuestions flattened ifNotEmpty: [ :anArray | anArray first shortName ] ifEmpty: '' ]
			width: 120;
		column: 'Root Categories'
			evaluated: [ :line | line parentHierarchyGeneralQuestions flattened ifNotEmpty: [ :anArray | anArray first mainGroupName ] ifEmpty: '' ]
			width: 120;
		column: 'FFP Children'
			evaluated: [ :line | line generalAnyLevelSubQuestions count: [ :eachQuestion | eachQuestion mainGroupName = 'FFP' ] ]
			width: 120;
		column: 'EFP Children'
			evaluated: [ :line | line generalAnyLevelSubQuestions count: [ :eachQuestion | eachQuestion mainGroupName = 'EFP' ] ]
			width: 120;
		column: 'US Children'
			evaluated: [ :line | line generalAnyLevelSubQuestions count: [ :eachQuestion | eachQuestion mainGroupName = 'US' ] ]
			width: 120;
		column: 'QGS Children'
			evaluated: [ :line | line generalAnyLevelSubQuestions count: [ :eachQuestion | eachQuestion mainGroupName = 'QGS' ] ]
			width: 120;
		column: 'Tool Usage [%]'
			evaluated: [ :line | line staticVsLiveToolUsage asFloat printShowingDecimalPlaces: 7 ]
			width: 120
			tags: {}
			sortedBy: [ :a :b | a staticVsLiveToolUsage > b staticVsLiveToolUsage ];
		column: 'Tool Usage'
			evaluated: [ :line | TRATableSymbolToolUsageColumn new toolUsageForQuestion: line ]
			width: 120;
		column: 'Duration'
			evaluated: [ :line | line duration asSeconds ]
			width: 120;
		column: 'Dynamic Tool Usage [seconds]'
			evaluated: [ :line | (line duration * line staticVsLiveToolUsage) asRoundedSeconds  ]
			width: 120;
		column: 'Static Tool Usage [seconds]'
			evaluated: [ :line | (line duration - (line duration * line staticVsLiveToolUsage)) asRoundedSeconds ]
			width: 120;
		column: 'Start [seconds]'
			evaluated: [ :line | line start asDuration asRoundedSeconds ]
			width: 120;
		column: 'Start [%]'
			evaluated: [ :line | (line start asDuration / line sessionHeading sessionDurationBasedOnTranscript)
				asFloat printShowingDecimalPlaces: 7 ]
			width: 120;
		column: 'Session Duration [seconds]'
			evaluated: [ :line | line sessionHeading sessionDurationBasedOnTranscript asRoundedSeconds ]
			width: 120;
		installExportToCSV.
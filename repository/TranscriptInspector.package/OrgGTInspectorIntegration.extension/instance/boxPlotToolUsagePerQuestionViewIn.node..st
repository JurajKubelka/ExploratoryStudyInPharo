*TranscriptInspector-toolusage-boxplot
boxPlotToolUsagePerQuestionViewIn: composite node: aNode 
	^ composite roassal2
			title: 'Box Plot Tool Usage Per Question';
			when: [ aNode generalQuestions notEmpty ];
			painting: [ :aView | self paintBoxPlotToolUsagePerQuestionViewIn: aView node: aNode ]
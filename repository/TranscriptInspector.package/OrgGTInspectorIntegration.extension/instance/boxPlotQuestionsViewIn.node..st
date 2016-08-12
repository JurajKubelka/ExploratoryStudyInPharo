*TranscriptInspector-questions-boxplots
boxPlotQuestionsViewIn: composite node: aNode 
	^ composite roassal2
			title: 'Box Plot Questions';
			when: [ aNode generalQuestions notEmpty ];
			painting: [ :aView | self paintBoxPlotQuestionsViewIn: aView node: aNode ]
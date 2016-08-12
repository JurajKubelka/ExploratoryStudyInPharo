*TranscriptInspector-questions
generalQuestionsViewIn: composite node: aNode
	^ composite roassal2
			title: 'GQ Total Numbers';
			when: [ aNode generalQuestions notEmpty ];
			painting: [ :aView | self paintGeneralQuestionsOn: aView node: aNode ]
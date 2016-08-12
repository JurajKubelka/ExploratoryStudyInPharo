*TranscriptInspector-roassal
toolUsageVsDurationViewIn: composite node: aNode
	^ composite roassal2
			title: 'Tool Usage vs. Duration';
			when: [ aNode isSessionHeading and: [ aNode fullyDefinedQeneralQuestions notEmpty ] ];
			painting: [ :aView | self paintToolUsageVsDurationOn: aView node: aNode ]
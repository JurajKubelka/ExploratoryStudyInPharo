*TranscriptInspector-toolusage-timeline
toolUsageViewIn: composite node: aNode withQuestions: aBoolean
	^ composite roassal2
		title: 'Tool Usage';
		when: [ aNode isSessionHeading or: [ aNode isToolUsageHeading ] ];
		painting: [ :aView | 
			self
				paintToolUsageOn: aView
				node: aNode
				withQuestions: aBoolean
				legend: true ]
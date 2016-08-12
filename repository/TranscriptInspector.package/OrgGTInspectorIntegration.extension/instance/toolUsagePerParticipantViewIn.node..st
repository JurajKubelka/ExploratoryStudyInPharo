*TranscriptInspector-roassal
toolUsagePerParticipantViewIn: composite node: aNode
	^ composite roassal2
			title: 'Tool Usage Per Participant';
			when: [ aNode isSessionHeading or: [ aNode isToolUsageHeading ] ];
			painting: [ :aView | self paintToolUsagePerParticipantOn: aView node: aNode ]
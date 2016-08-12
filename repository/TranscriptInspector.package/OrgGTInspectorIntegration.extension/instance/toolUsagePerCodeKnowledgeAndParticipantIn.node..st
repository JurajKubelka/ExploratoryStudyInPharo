*TranscriptInspector-toolusage-boxplot
toolUsagePerCodeKnowledgeAndParticipantIn: aView node: aNode
	| builder |
	builder := RTComposer new.
	builder view: aView.
	
	self toolUsagePerCodeKnowledgeIn: aView node: aNode.
	builder group: #code.
	self toolUsagePerParticipantIn: aView node: aNode.
	builder group: #participant.
	
	builder move: #participant onTheRightOf: #code.
	^ builder view
*TranscriptInspector
participantId
	^ self tseParticipantId ifEmpty: [ self plateauParticipantId ]
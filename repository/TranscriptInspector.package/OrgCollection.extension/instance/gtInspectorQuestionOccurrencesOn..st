*TranscriptInspector
gtInspectorQuestionOccurrencesOn: composite
	<gtInspectorPresentationOrder: -1>
	^ ((self codeType sillito: self generalQuestions) abridge
			gtInspectorQuestionOccurrencesOn: composite)
				title: 'GQ Occurrences'
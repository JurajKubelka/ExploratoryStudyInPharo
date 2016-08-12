*TranscriptInspector
gtInspectorQuestionOccurrencesOn: composite
	<gtInspectorPresentationOrder: 0>
	self codeType ifNil: [ ^ nil ].
	^ ((self codeType sillito: self generalQuestions) abridge
			gtInspectorQuestionOccurrencesOn: composite)
				title: 'GQ Occurrences'
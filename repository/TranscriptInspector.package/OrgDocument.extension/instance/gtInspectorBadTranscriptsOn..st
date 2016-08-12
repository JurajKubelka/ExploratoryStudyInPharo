*TranscriptInspector
gtInspectorBadTranscriptsOn: composite
	<gtInspectorPresentationOrder: -100>
		^ composite list
				title: 'Badly parsed transcripts';
				display: [ :anOrgDocument | anOrgDocument badlyParsedTranscripts ];
				when: [ :anOrgDocument | anOrgDocument badlyParsedTranscripts notEmpty ];
				format: [ :anOrgHeadingItem | anOrgHeadingItem sessionHeading title ]
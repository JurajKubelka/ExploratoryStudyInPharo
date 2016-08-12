*TranscriptInspector-roassal
familiarCodeVsToolUsageViewIn: composite node: aNode
	^ composite roassal2
			title: 'Familiar vs Tools';
			painting: [ :aView | self paintFamiliarCodeVsToolUsageOn: aView node: aNode ]
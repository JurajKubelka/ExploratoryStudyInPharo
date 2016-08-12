*TranscriptInspector
transcriptTextOn: composite node: aOrgNode
	^ composite text 
			title: 'Transcript Text';
			display: [ aOrgNode headingParent text ];
			scrollAtIndex: 100;
			act: [ :aRepresentation :aNode | aOrgNode headingParent 
							recompileNodeWithNewText: aRepresentation text ui: aRepresentation ]
				icon: Smalltalk ui icons glamorousAccept
				entitled: 'Accept new text';
			act: [ aOrgNode headingParent document save ]
				icon: Smalltalk ui icons glamorousSave
				entitled: 'Save document to disk'
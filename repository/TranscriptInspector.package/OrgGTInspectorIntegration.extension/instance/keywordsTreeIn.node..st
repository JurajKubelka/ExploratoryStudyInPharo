*TranscriptInspector
keywordsTreeIn: composite node: aNode
	^ composite tree
			title: 'Keywords';
			display: [ TRAKeywordName from: aNode keywords ];
			when: [ aNode keywords notEmpty ];
			children: [ :aKeywordOrKeywordName |
				aKeywordOrKeywordName isKeyword 
					ifTrue: [ #() ]
					ifFalse: [ aKeywordOrKeywordName keywords ] ];
			format: [ :aKeywordOrKeywordName |
				aKeywordOrKeywordName isKeyword 
					ifTrue: [ aKeywordOrKeywordName printString, 
									' in ', aKeywordOrKeywordName sessionHeading sessionId, 
									', ', aKeywordOrKeywordName sessionHeading participantId,
									' at ', aKeywordOrKeywordName printDuration ]
					ifFalse: [ aKeywordOrKeywordName printString ] ];
			beMultiple;
			sendOneOrMultiple
			
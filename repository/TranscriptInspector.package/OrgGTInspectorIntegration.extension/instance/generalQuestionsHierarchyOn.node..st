*TranscriptInspector
generalQuestionsHierarchyOn: composite node: aNode
	^ composite tree
			title: 'GQ Hierarchy';
			display: [ aNode rootGeneralQuestions ];
			when: [ aNode rootGeneralQuestions notEmpty ];
			children: [ :aQuestion | aQuestion generalOneLevelSubQuestions ];
			format: [ :aQuestion | String streamContents: [ :aStream |
					aQuestion printTimespanOn: aStream. 
					aStream space.
					aStream print: (TRAFloatPrinter uniqueInstance 
								normalize: aQuestion staticVsLiveToolUsage).
					aStream 
						space; 
						print: aQuestion; 
						space;
						nextPutAll: aQuestion responseState shortName ] ]
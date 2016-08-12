*TranscriptInspector
fullyDefinedQeneralQuestions
	^ self generalQuestions select: [ :eachQuestion |
			eachQuestion timespan notNil and: [ 
				eachQuestion staticVsLiveToolUsage isNaN not and: [ 
					eachQuestion staticVsLiveToolUsage isInfinite not ] ] ].
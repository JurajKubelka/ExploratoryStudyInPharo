questions - tool usage
durationPerStaticAndDynamicPerQuestionLevelCumulative: aNode
	"Computes: 
	| Question Levels | Static Tool Usage            | Dynamic Tool Usage            |
	| 1               | time spent using static tool | time spent using dynamic tool |
	| 2               |                              |                               |
	
	Level 1 includes times for levels 2, 3, etc. The same for level 2, etc."
	| levels |
	levels := Dictionary new.
	aNode generalQuestions collect: [ :e | | level dynamic duration result |
		level := e level. 
		dynamic := e staticVsLiveToolUsage. 
		dynamic isNaN | dynamic isInfinite ifFalse: [ 
			duration := e duration.
			result := levels at: level ifAbsentPut: [ { 0 asDuration. 0 asDuration } ].
			levels 
				at: level 
				put: (Array 
					with: duration * (1 - dynamic) + result first 
					with: duration * dynamic + result second) ].
	] as: Set.
	^ levels.
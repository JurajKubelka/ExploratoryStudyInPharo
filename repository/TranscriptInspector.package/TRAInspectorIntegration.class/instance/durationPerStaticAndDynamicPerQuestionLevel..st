questions - tool usage
durationPerStaticAndDynamicPerQuestionLevel: aNode
	| cumulativeLevels levels |
	levels := Dictionary new.
	cumulativeLevels := (self durationPerStaticAndDynamicPerQuestionLevelCumulative: aNode).
	cumulativeLevels keys do: [ :index | | thisLevel nextLevel |
		thisLevel := cumulativeLevels at: index.
		nextLevel := cumulativeLevels at: index + 1 ifAbsent: { 0 asDuration. 0 asDuration }.
		levels 
			at: index
			put: { thisLevel first - nextLevel first. thisLevel second - nextLevel second } ].
	^ levels
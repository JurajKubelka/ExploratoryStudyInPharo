configuration
setGroupingPerQuestion
	groupingBlock := [ :eachQuestion | | tool time |
		tool := (eachQuestion staticVsLiveToolUsage // self toolUsageConstant).
		time := eachQuestion duration // self durationConstant.
		eachQuestion shortName printString, '_', tool printString, '_', time printString ]
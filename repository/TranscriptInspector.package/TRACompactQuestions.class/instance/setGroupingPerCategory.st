configuration
setGroupingPerCategory
	groupingBlock := [ :eachQuestion | | tool time |
		tool := (eachQuestion staticVsLiveToolUsage // self toolUsageConstant).
		time := eachQuestion duration // self durationConstant.
		tool printString, '_', time printString ]
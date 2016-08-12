accessing
shortGeneralQuestion
	^ $Q asParser flatten, (#letter asParser optional, #digit asParser plus) flatten, spaces
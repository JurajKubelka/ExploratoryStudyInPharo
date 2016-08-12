accessing
duration
	^ super duration ==> [ :list | 
		Timespan 
			starting: list first start
			ending: list third start ].
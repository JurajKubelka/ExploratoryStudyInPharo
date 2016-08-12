accessing
timestamp
	^ super timestamp ==> [ :list |
		Timespan starting: (
			Time 
				hour: 0 
				minute: list first asNumber
				second: list third asNumber) ]
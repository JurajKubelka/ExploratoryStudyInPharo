accessing
item
	^ super item ==> [ :list |
			TRAItem new
				timespan: list first;
				space: list second;
				parts: list third;
				end: list fourth;
				yourself ]
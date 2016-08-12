accessing
subgroups: aCollection
	aCollection do: [ :eachSubgroup |
		eachSubgroup group: self ].
	subgroups := aCollection
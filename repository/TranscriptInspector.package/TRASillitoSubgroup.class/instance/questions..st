accessing
questions: aCollection
	aCollection do: [ :eachQuestion |
		eachQuestion subgroup: self ].
	questions := aCollection
enumerating
groupSameAs: aTRASillitoGroup
	^ self groups detect: [ :eachGroup | eachGroup longName = aTRASillitoGroup longName ]
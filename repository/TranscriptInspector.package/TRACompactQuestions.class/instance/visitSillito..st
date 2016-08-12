visitor
visitSillito: aTRASillito 
	aTRASillito groups do: [ :eachGroup | eachGroup accept: self ].

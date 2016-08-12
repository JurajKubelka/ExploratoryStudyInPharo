visitor
visitSillitoGroup: aTRASillitoGroup 
	aTRASillitoGroup subgroups do: [ :each | each accept: self ].

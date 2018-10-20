visitor
visitTableSillitoToolUsageColumn: aColumn 
	| usage color alpha |
	usage := question toolUsage printedSymbol asString.
	alpha := 0.
	(usage = 's/d') ifTrue: [ alpha := 75. color := 'yellow' ]. 
	(usage = 'd') ifTrue: [ alpha := 75. color := 'green' ]. 
	export field: usage color: color alpha: alpha.
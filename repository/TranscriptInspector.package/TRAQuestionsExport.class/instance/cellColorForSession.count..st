private
cellColorForSession: aTRATableColumn count: anInteger
	| value |
	value := ((anInteger / aTRATableColumn maxValue) * 50) asInteger.
	self haltIf: [ value > 100 ].
	^ value